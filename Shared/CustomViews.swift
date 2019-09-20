// Custom SwiftUI Views

// Direct to SwiftUI doesn't force you into the pre-fabricated Views,
// you can replace almost any D2S View with your own. Be it pages,
// just specific property viewers or editors, or the login page.

import DirectToSwiftUI


// MARK: - Own Page View

/**
 * We replace the `inspect` page for `Customer` objects w/ our own View.
 *
 * Note how we still call out to the `BasicLook.Page.Inspect` to present
 * all (configured) `displayPropertyKeys` as a list.
 */
struct CustomerView: View {
  
  @Environment(\.object) var object
  
  var body: some View {
    VStack {
      HStack {
        D2SDisplayString()
          .environment(\.propertyKey, "firstName")
        Text(verbatim: "\(object.lastName ?? "-")")
        Spacer()
      }
      .font(.title)
      .padding()

      Divider()
      
      BasicLook.Page.Inspect()
    }
  }
  
}


// MARK: - Own Property Editor

private let nilRating = "-"
private let ratings   = [ nilRating, "G", "PG", "PG-13", "R", "NC-17" ]

/**
 * Movie ratings are represented as strings in the database, but at least
 * the PG version actually restricts the valid strings to a specific set
 * of enum values.
 *
 * Instead of using a plain TextField, we can hook up our own Rating editor.
 */
struct EditRating: View, D2SAttributeValidator {
  
  @EnvironmentObject var object : OActiveRecord
  
  @Environment(\.displayNameForProperty) private var label
  @Environment(\.attribute)                      var attribute
  
  var body: some View {
    HStack(spacing: 16) {
      Text(label).foregroundColor(isValid ? nil : .red)
      Spacer()
      ForEach(ratings, id: \.self) { ( rating: String ) in
        Group { // Button didn't work in here
          if self.object.rating as? String == rating {
            Text(rating)
              .foregroundColor(.black)
          }
          else if self.object.rating == nil && rating == nilRating {
            Text(rating)
              .foregroundColor(.black)
          }
          else {
            Text(rating)
              .foregroundColor(.gray)
          }
        }
        .onTapGesture { () -> Void in
          self.object.rating = rating == nilRating ? nil : rating
        }
      }
    }
  }
}
