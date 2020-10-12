using RentalHouse.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHouse.Controllers
{
    public class HomeController : Controller
    {

        RentalHouseEntities rentalHouseEntities = new RentalHouseEntities();

        public ActionResult ContactRecord()
        {
            return View(rentalHouseEntities.ContactRecords.ToList());
        }


        // GET: House/Delete/5
        public ActionResult Delete(ContactRecord QueryID)
        {

            var d = rentalHouseEntities.ContactRecords.Where(x => x.id == QueryID.id).FirstOrDefault();
            rentalHouseEntities.ContactRecords.Remove(d);
            rentalHouseEntities.SaveChanges();
            return RedirectToAction("ContactRecord");

        }

        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult Contact() {
            ViewBag.Title = "Home Page";

            return View();
        }



        [HttpPost]
        public ActionResult sendQuery(Contact contact)
        {
            //Pass the data to store the record into the table 


            contact.sendQuery("insert into ContactRecord values('"+contact.QueryName+"','"+contact.QueryEmail+"','"+contact.QueryContact+"','"+contact.QueryMsg+"')");
                return View("thanks");
            



        }




        public ActionResult thanks()
        {
            ViewBag.Title = "Home Page";

            return View();
        }


    }
}
