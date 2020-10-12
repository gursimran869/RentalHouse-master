using RentalHouse.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHouse.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        RentalHouseEntities rentalHouseEntities = new RentalHouseEntities();

        public ActionResult CustomerRecord()
        {
            return View(rentalHouseEntities.CustomerRecords.ToList());
        }

        // GET: Customer/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Customer/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customer/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "id")] CustomerRecord customerRecord)
        {

            if (!ModelState.IsValid)
                return View();
            rentalHouseEntities.CustomerRecords.Add(customerRecord);
            rentalHouseEntities.SaveChanges();
            return RedirectToAction("CustomerRecord");

        }

        // GET: Customer/Edit/5
        public ActionResult Edit(int id)
        {
            var customerID = (from m in rentalHouseEntities.CustomerRecords where m.id == id select m).First();
            return View(customerID);
        }

        // POST: Customer/Edit/5
        [HttpPost]
        public ActionResult Edit(CustomerRecord customerID)
        {

            var orignalRecord = (from m in rentalHouseEntities.CustomerRecords where m.id == customerID.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            rentalHouseEntities.Entry(orignalRecord).CurrentValues.SetValues(customerID);

            rentalHouseEntities.SaveChanges();
            return RedirectToAction("CustomerRecord");

        }

        // GET: Customer/Delete/5
        public ActionResult Delete(CustomerRecord customerID)
        {

            var d = rentalHouseEntities.CustomerRecords.Where(x => x.id == customerID.id).FirstOrDefault();
            rentalHouseEntities.CustomerRecords.Remove(d);
            rentalHouseEntities.SaveChanges();
            return RedirectToAction("CustomerRecord");

            
        }

        // POST: Customer/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
