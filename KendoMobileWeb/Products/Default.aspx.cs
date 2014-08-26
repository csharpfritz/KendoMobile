using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KendoMobile.Products
{
  public partial class Default : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<Models.BoardGame> Get()
    {

      var repo = new Models.BoardGameRepository();
      return repo.Get(_ => true).AsQueryable();

    }

  }
}