using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KendoMobile.Models
{
  public class BoardGameRepository
  {

    private static readonly List<BoardGame> _Games = new List<BoardGame>
    {
      new BoardGame {ID=1, Name="Checkers", Price=5.99M, NumInStock=10},
      new BoardGame {ID=2, Name="Chess", Price=7.99M, NumInStock=22},
      new BoardGame {ID=3, Name="Backgammon", Price=11.99M, NumInStock=20},
      new BoardGame {ID=4, Name="Parcheesi", Price=8.95M, NumInStock=3}
    };

    public BoardGame GetById(int id)
    {
      return _Games.FirstOrDefault(b => b.ID == id);
    }

    public IEnumerable<BoardGame> Get(Func<BoardGame, bool> where)
    {
      return _Games.Where(where);
    }

    public void Add(BoardGame newGame)
    {
      _Games.Add(newGame);
    }

    public void Update(int id, BoardGame gameToUpdate)
    {
      Remove(id);
      _Games.Add(gameToUpdate);
    }

    public void Remove(int id)
    {
      _Games.Remove(GetById(id));
    }
  }

}