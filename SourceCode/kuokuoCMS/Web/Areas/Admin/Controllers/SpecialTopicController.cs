using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;

namespace Web.Areas.Admin.Controllers
{
    public class SpecialTopicController : Controller
    {
        private kuokuoCMSContentDBEntities db = new kuokuoCMSContentDBEntities();

        //
        // GET: /Admin/SpecialTopic/
        public ActionResult Index()
        {
            var specialtopics = db.SpecialTopics.Include(s => s.SpecialTopicTypDictionary).Include(s => s.SpecialTopic2);
            return View(specialtopics.ToList());
        }

        //
        // GET: /Admin/SpecialTopic/Details/5
        public ActionResult Details(Guid id)
        {
            SpecialTopic specialtopic = db.SpecialTopics.Find(id);
            if (specialtopic == null)
            {
                return HttpNotFound();
            }
            return View(specialtopic);
        }

        //
        // GET: /Admin/SpecialTopic/Create
        public ActionResult Create()
        {
            ViewBag.SpecialTopicTypeID = new SelectList(db.SpecialTopicTypDictionaries, "ID", "Name");
            ViewBag.ParentSpecialTopicID = new SelectList(db.SpecialTopics, "ID", "Name");
            return View();
        }

        //
        // POST: /Admin/SpecialTopic/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SpecialTopic specialtopic)
        {
            if (ModelState.IsValid)
            {
                db.SpecialTopics.Add(specialtopic);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.SpecialTopicTypeID = new SelectList(db.SpecialTopicTypDictionaries, "ID", "Name", specialtopic.SpecialTopicTypeID);
            ViewBag.ParentSpecialTopicID = new SelectList(db.SpecialTopics, "ID", "Name", specialtopic.ParentSpecialTopicID);
            return View(specialtopic);
        }

        //
        // GET: /Admin/SpecialTopic/Edit/5
        public ActionResult Edit(Guid id)
        {
            SpecialTopic specialtopic = db.SpecialTopics.Find(id);
            if (specialtopic == null)
            {
                return HttpNotFound();
            }
            ViewBag.SpecialTopicTypeID = new SelectList(db.SpecialTopicTypDictionaries, "ID", "Name", specialtopic.SpecialTopicTypeID);
            ViewBag.ParentSpecialTopicID = new SelectList(db.SpecialTopics, "ID", "Name", specialtopic.ParentSpecialTopicID);
            return View(specialtopic);
        }

        //
        // POST: /Admin/SpecialTopic/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SpecialTopic specialtopic)
        {
            if (ModelState.IsValid)
            {
                db.Entry(specialtopic).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.SpecialTopicTypeID = new SelectList(db.SpecialTopicTypDictionaries, "ID", "Name", specialtopic.SpecialTopicTypeID);
            ViewBag.ParentSpecialTopicID = new SelectList(db.SpecialTopics, "ID", "Name", specialtopic.ParentSpecialTopicID);
            return View(specialtopic);
        }

        //
        // GET: /Admin/SpecialTopic/Delete/5
        public ActionResult Delete(Guid id)
        {
            SpecialTopic specialtopic = db.SpecialTopics.Find(id);
            if (specialtopic == null)
            {
                return HttpNotFound();
            }
            return View(specialtopic);
        }

        //
        // POST: /Admin/SpecialTopic/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            SpecialTopic specialtopic = db.SpecialTopics.Find(id);
            db.SpecialTopics.Remove(specialtopic);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
