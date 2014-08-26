using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace KendoMobile.Products
{
  public partial class Edit_k : System.Web.UI.Page
  {

    private Models.BoardGameRepository _Repo = new Models.BoardGameRepository();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // The id parameter should match the DataKeyNames value set on the control
    // or be decorated with a value provider attribute, e.g. [QueryString]int id
    public KendoMobile.Models.BoardGame myForm_GetItem([FriendlyUrlSegments(0)]int? id)
    {
      if (!id.HasValue) Response.Redirect("/Products");
      return _Repo.GetById(id.Value);
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public void myForm_UpdateItem(int id)
    {
      KendoMobile.Models.BoardGame item = _Repo.GetById(id);
      // Load the item here, e.g. item = MyDataLayer.Find(id);
      if (item == null)
      {
        // The item wasn't found
        ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
        return;
      }
      TryUpdateModel(item);
      if (ModelState.IsValid)
      {
        // Save changes here, e.g. MyDataLayer.SaveChanges();
        _Repo.Update(id, item);
        Response.Redirect("/Products");
      }
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
      Response.Redirect("/Products");
    }
  }
}