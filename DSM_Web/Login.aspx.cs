using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Common.Reset();
        if (!Page.IsPostBack)
        {
            if (Request.IsAuthenticated && !string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            {
                Response.Redirect("~/UnauthorisedAccess.aspx");
            }
        }
    }


    protected void myLogin_LoginError(object sender, EventArgs e)
    {
        myLogin.FailureText = "Your login attempt was not successful. Please try again";

        MembershipUser userInfo = Membership.GetUser(myLogin.UserName);
        if (userInfo != null)
        {
            if (userInfo.IsLockedOut)
            {
                myLogin.FailureText = "Your account has been locked out because of too many invalid login attempts. Please contact the administrator to have your account unlocked.";
            }
            else if (!userInfo.IsApproved)
            {
                myLogin.FailureText = "Your account has not yet been approved.  You cannot login until an administrator has approved your account.";
            }
        }
    }
}