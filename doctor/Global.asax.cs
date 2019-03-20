using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using doctor;

namespace doctor
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            RegisterRoutes(RouteTable.Routes);
        }
        static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("AddService", "AddService", "~/AddService.aspx");
            routes.MapPageRoute("Appointment", "Appointment", "~/Appointment.aspx");
            routes.MapPageRoute("Click", "Click", "~/Click.aspx");
            routes.MapPageRoute("congratulations", "congratulations", "~/congratulations.aspx");
            routes.MapPageRoute("Default", "Default", "~/Default.aspx");
            routes.MapPageRoute("information", "information", "~/information.aspx");
            routes.MapPageRoute("Login", "Login", "~/Login.aspx");
            routes.MapPageRoute("logout", "logout", "~/logout.aspx");
            routes.MapPageRoute("Management", "Management", "~/Management.aspx");
            routes.MapPageRoute("search", "search", "~/search.aspx");
            routes.MapPageRoute("udb", "udb", "~/udb.aspx");
            routes.MapPageRoute("Verify", "Verify", "~/Verify.aspx");
            routes.MapPageRoute("forgotpassword", "forgotpassword", "~/forgotpassword.aspx");
            routes.MapPageRoute("about", "about", "~/about.aspx");
            routes.MapPageRoute("contact", "contact", "~/contact.aspx");

            routes.MapPageRoute("AppointmentsList", "Doctor/AppointmentsList", "~/Doctor/AppointmentsList.aspx");
            routes.MapPageRoute("Default2", "Doctor/Default", "~/Doctor/Default.aspx");
            routes.MapPageRoute("delete", "Doctor/delete", "~/Doctor/delete.aspx");
            routes.MapPageRoute("Payment", "Doctor/Payment", "~/Doctor/Payment.aspx");
            routes.MapPageRoute("Profile", "Doctor/Profile", "~/Doctor/Profile.aspx");
            routes.MapPageRoute("Service", "Doctor/Service", "~/Doctor/Service.aspx");
            routes.MapPageRoute("Verify2", "Doctor/Verify", "~/Doctor/Verify.aspx");

            routes.MapPageRoute("AddDoctor", "Hospital/AddDoctor", "~/Hospital/AddDoctor.aspx");
            routes.MapPageRoute("Default3", "Hospital/Default", "~/Hospital/Default.aspx");
            routes.MapPageRoute("EditProfile", "Hospital/EditProfile", "~/Hospital/EditProfile.aspx");
            routes.MapPageRoute("Verify3", "Hospital/Verify", "~/Hospital/Verify.aspx");

            routes.MapPageRoute("AdminPanel", "SuperAdmin/AdminPanel", "~/SuperAdmin/AdminPanel.aspx");
            routes.MapPageRoute("AdminSettings", "SuperAdmin/AdminSettings", "~/SuperAdmin/AdminSettings.aspx");
            routes.MapPageRoute("Advertisement", "SuperAdmin/Advertisement", "~/SuperAdmin/Advertisement.aspx");
            routes.MapPageRoute("DashBoard", "SuperAdmin/DashBoard", "~/SuperAdmin/DashBoard.aspx");
            routes.MapPageRoute("DoctorAdd", "SuperAdmin/DoctorAdd", "~/SuperAdmin/DoctorAdd.aspx");
            routes.MapPageRoute("DoctorVerify", "SuperAdmin/DoctorVerify", "~/SuperAdmin/DoctorVerify.aspx");
            routes.MapPageRoute("HospitalAdd", "SuperAdmin/HospitalAdd", "~/SuperAdmin/HospitalAdd.aspx");
            routes.MapPageRoute("HospitalOption", "SuperAdmin/HospitalOption", "~/SuperAdmin/HospitalOption.aspx");
            routes.MapPageRoute("logo", "SuperAdmin/logo", "~/SuperAdmin/logo.aspx");
            routes.MapPageRoute("Payment2", "SuperAdmin/Payment", "~/SuperAdmin/Payment.aspx");
            routes.MapPageRoute("Sponsor", "SuperAdmin/Sponsor", "~/SuperAdmin/Sponsor.aspx");
            routes.MapPageRoute("User", "SuperAdmin/User", "~/SuperAdmin/User.aspx");
            routes.MapPageRoute("serial", "SuperAdmin/serial", "~/SuperAdmin/serial.aspx");
            routes.MapPageRoute("BloodDonor", "SuperAdmin/BloodDonor", "~/SuperAdmin/BloodDonor.aspx");
            routes.MapPageRoute("contactus", "SuperAdmin/contactus", "~/SuperAdmin/contactus.aspx");
        }
        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }
    }
}
