using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Memory
/// </summary>
public class Memory
{
    List<string> birds;
    List<bool> matches;
    public const int NUM_BIRDS = 8;
    Random rand = new Random();

	public Memory()
	{
        // Initializd the list
        birds = new List<string>() { "bluebird", "eagle", "goldfinch", "hawk", "hummingbird", "peacock", "penguin", "turkey" };
        matches = new List<bool> { false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false };
        // Add duplicates to the list
        for (int i = 0; i < NUM_BIRDS; i++)
            birds.Add(birds[i]);
        // Randomize
        for (int i = 0; i < NUM_BIRDS * 10; i++)
        {
            int dst = rand.Next(NUM_BIRDS * 2);
            string temp = birds[dst];
            int src = rand.Next(NUM_BIRDS * 2);
            birds[dst] = birds[src];
            birds[src] = temp;
        }
	}

    public Memory(List<string> birdList, List<bool> matchList)    // Use this constructor when there is a game in progress
    {
        birds = birdList;
        matches = matchList;
    }

    public List<string> Birds
    {
        get { return birds; }
    }

    public List<bool> Matches
    {
        get { return matches; }
    }

    public bool isMatch(int pic1, int pic2)
    {
        return birds[pic1] == birds[pic2];
    }
}