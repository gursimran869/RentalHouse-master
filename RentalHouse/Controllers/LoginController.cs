using RentalHouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace RentalHouse.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AdminLogin(Login login)
        {
            //Pass the data to store the record into the table 

            DataTable tbl = new DataTable();
            tbl = login.CheckLogin("select * from AdminLogin where LoginName='" + login.LoginName + "'and LoginPassword='" + login.LoginPassword + "'");

            if (tbl.Rows.Count > 0)
            {
                return View("right");
            }
            else
            {
                return View("Wrong");
            }



        }





        // GET: Login
        public ActionResult right()
        {
            return View();
        }

        // GET: Login
        public ActionResult Wrong()
        {
            return View();
        }

    }
}