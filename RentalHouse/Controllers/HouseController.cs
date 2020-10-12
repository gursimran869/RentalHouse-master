using RentalHouse.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHouse.Controllers
{
    public class HouseController : Controller
    {
        // GET: House
        RentalHouseEntities rentalHouseEntities = new RentalHouseEntities();

        public ActionResult HouseRecord()
        {
            return View(rentalHouseEntities.HouseRecords.ToList());
        }

        public ActionResult HouseDisplay()
        {
            return View(rentalHouseEntities.HouseRecords.ToList());
        }

        // GET: House/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: House/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: House/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "id")] HouseRecord houseRecord)
        {
            if (!ModelState.IsValid)
                return View();
            rentalHouseEntities.HouseRecords.Add(houseRecord);
            rentalHouseEntities.SaveChanges();
            return RedirectToAction("HouseRecord");
        }

        // GET: House/Edit/5
        public ActionResult Edit(int id)
        {
            var houseID = (from m in rentalHouseEntities.HouseRecords where m.id == id select m).First();
            return View(houseID);
        }

        // POST: House/Edit/5
        [HttpPost]
        public ActionResult Edit(HouseRecord houseID)
        {
            var orignalRecord = (from m in rentalHouseEntities.HouseRecords where m.id == houseID.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            rentalHouseEntities.Entry(orignalRecord).CurrentValues.SetValues(houseID);

            rentalHouseEntities.SaveChanges();
            return RedirectToAction("HouseRecord");

        }

        // GET: House/Delete/5
        public ActionResult Delete(HouseRecord houseID)
        {

            var d = rentalHouseEntities.HouseRecords.Where(x => x.id == houseID.id).FirstOrDefault();
            rentalHouseEntities.HouseRecords.Remove(d);
            rentalHouseEntities.SaveChanges();
            return RedirectToAction("HouseRecord");

        }

        // POST: House/Delete/5
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
