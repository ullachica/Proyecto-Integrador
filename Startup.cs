using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using MVCProyectoIntegrador.Models;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCProyectoIntegrador.Startup))]
namespace MVCProyectoIntegrador
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            CreateRolesAndUsers();
        }


        private void CreateRolesAndUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();
            var RoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            if (!RoleManager.RoleExists("Admin"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Admin";
                RoleManager.Create(role);
            }
            if (!RoleManager.RoleExists("User"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "User";
                RoleManager.Create(role);
            }
            if (!RoleManager.RoleExists("Developer"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Developer";
                RoleManager.Create(role);
            }
        }
    }
}
