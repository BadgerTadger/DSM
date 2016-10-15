using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Membership_CreateUserWizard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void NewUserWizard_CreatedUser(object sender, EventArgs e)
    {
        // Get the UserId of the just-added user
        MembershipUser newUser = Membership.GetUser(NewUserWizard.UserName);
        Guid newUserId = (Guid)newUser.ProviderUserKey;

        if (!Roles.RoleExists("Users"))
        {
            Roles.CreateRole("Users");
        }
        Roles.AddUserToRole(NewUserWizard.UserName, "Users");
        Common.Reset();
    }
}