// Database Config

import CoreData

// FIXME: All this should be done asynchronously :-)

let managedObjectContext : NSManagedObjectContext = {
  let psc = storeCoordinator
  let moc = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
  moc.persistentStoreCoordinator = psc
  return moc
}()

fileprivate let storeCoordinator : NSPersistentStoreCoordinator = {
  let fm = FileManager.default
  
  guard let templateDB =
              Bundle.main.path(forResource: "SakilaCD", ofType: "sqlite") else {
    print("Could not locate Sakila database!")
    fatalError("Could not locate template DB!")
  }
  let templateDBURL = URL(fileURLWithPath: templateDB)
  
  guard let docdir = fm.urls(for: .documentDirectory,
                             in: .userDomainMask).first else {
    print("Could not locate documentDirectory!")
    fatalError("Could not locate documentDirectory!")
  }
  let dataURL = docdir.appendingPathComponent("Sakila.sqlite")
  
  let psc = NSPersistentStoreCoordinator(managedObjectModel: model)

  do {
    if !fm.fileExists(atPath: dataURL.path) {
      print("Bootstrapping CD database from template DB ...")
      try fm.copyItem(at: templateDBURL, to: dataURL)
      print("done.")
    }
  }
  catch {
    print("Could not copy template database:", error,
          "\n  from:", templateDB,
          "\n  to:  ", dataURL.path)
    fatalError("Could not copy template DB")
  }
  
  do {
    try psc.addPersistentStore(ofType: NSSQLiteStoreType,
                               configurationName: nil,
                               at: dataURL, options: nil)
  }
  catch {
    print("Could not add store:", error)
    fatalError("Could not add store!")
  }
  
  return psc
}()

fileprivate let model: NSManagedObjectModel = {
  guard let path =
      Bundle.main.path(forResource: "Sakila", ofType: "mom") else {
    print("Could not locate Sakila CoreData model!")
    fatalError("Could not locate model!")
  }
  
  let url = URL(fileURLWithPath: path)
  guard let model = NSManagedObjectModel(contentsOf: url) else {
    print("Could not load Sakila CoreData model:", url.path)
    fatalError("Could not load model!")
  }
  return model
}()
