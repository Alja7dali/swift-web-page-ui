# Progress

## Status indicators

| Status | Description      |
|--------|------------------|
| ⭕     | not started      |
| 🟠     | in progress      |
| 🟢     | completed        |

## SwiftUI Components

The following list is some of the components that are presented in [SwiftUI]([https://a](https://developer.apple.com/documentation/swiftui)), the list will get updated as the project grows. As well as adding any missing components.
> NOTE:
>
> - Current project scope is to implement SwiftUI v3 components, discarding any beta components.
>
> - [View modifiers](https://developer.apple.com/documentation/familycontrols/familyactivitypicker-view-modifiers/) are not included, a new list might be added below in future.

| Status | Name                                                                                         | Kind       | Category                     | Section                   |
|--------|----------------------------------------------------------------------------------------------|------------|------------------------------|---------------------------|
| 🟠     | [App](https://developer.apple.com/documentation/swiftui/app)                                 | `protocol` | App structure                | App structure an behavior |
| ⭕     | [ColorScheme](https://developer.apple.com/documentation/swiftui/colorscheme)                 | `enum`     | Configuration                | App structure an behavior |
||||||
| 🟠     | [Scene](https://developer.apple.com/documentation/swiftui/scene)                             | `protocol` | Life cycle                   | Scenes                    |
| ⭕     | [ScenePhase](https://developer.apple.com/documentation/swiftui/scenephase)                   | `enum`     | Life cycle                   | Scenes                    |
| 🟠     | [SceneBuilder](https://developer.apple.com/documentation/swiftui/scenebuilder)               | `struct`   | Life cycle                   | Scenes                    |
| 🟠     | [WindowGroup](https://developer.apple.com/documentation/swiftui/windowgroup)                 | `struct`   | Scene types                  | Scenes                    |
||||||
| 🟠     | [State](https://developer.apple.com/documentation/swiftui/state)                             | `struct`   | View state                   | State and data flow       |
| 🟢     | [Binding](https://developer.apple.com/documentation/swiftui/binding)                         | `struct`   | View state                   | State and data flow       |
| ⭕     | [ObservedObject](https://developer.apple.com/documentation/swiftui/observedobject)           | `struct`   | Model data                   | State and data flow       |
| ⭕     | [EnvironmentObject](https://developer.apple.com/documentation/swiftui/environmentobject)     | `struct`   | Model data                   | State and data flow       |
| ⭕     | [StateObject](https://developer.apple.com/documentation/swiftui/stateobject)                 | `struct`   | Model data                   | State and data flow       |
| ⭕     | [ObservableObject](https://developer.apple.com/documentation/swiftui/observableobject)       | `protocol` | Model data                   | State and data flow       |
| ⭕     | [Environment](https://developer.apple.com/documentation/swiftui/environment)                 | `struct`   | Environment data             | State and data flow       |
| ⭕     | [EnvironmentValues](https://developer.apple.com/documentation/swiftui/environmentvalues)     | `struct`   | Environment data             | State and data flow       |
| ⭕     | [EnvironmentKey](https://developer.apple.com/documentation/swiftui/environmentkey)           | `protocol` | Environment data             | State and data flow       |
| ⭕     | [PreferenceKey](https://developer.apple.com/documentation/swiftui/preferencekey)             | `protocol` | View preferences             | State and data flow       |
| ⭕     | [AppStorage](https://developer.apple.com/documentation/swiftui/appstorage)                   | `struct`   | App state                    | State and data flow       |
| ⭕     | [SceneStorage](https://developer.apple.com/documentation/swiftui/scenestorage)               | `struct`   | App state                    | State and data flow       |
| 🟢     | [DynamicProperty](https://developer.apple.com/documentation/swiftui/dynamicproperty)         | `protocol` | Change management            | State and data flow       |
||||||
| 🟢     | [View](https://developer.apple.com/documentation/swiftui/view)                               | `protocol` | View composition             | View fundamentals         |
| 🟢     | [ViewBuilder](https://developer.apple.com/documentation/swiftui/viewbuilder)                 | `struct`   | View composition             | View fundamentals         |
| 🟢     | [ViewModifier](https://developer.apple.com/documentation/swiftui/viewmodifier)               | `protocol` | View modifiers               | View fundamentals         |
| ⭕     | [EmptyModifier](https://developer.apple.com/documentation/swiftui/emptymodifier)             | `struct`   | View modifiers               | View fundamentals         |
| 🟢     | [ModifiedContent](https://developer.apple.com/documentation/swiftui/modifiedcontent)         | `struct`   | View modifiers               | View fundamentals         |
| ⭕     | [EnvironmentModifier](https://developer.apple.com/documentation/swiftui/environmentmodifier) | `protocol` | View modifiers               | View fundamentals         |
| 🟢     | [AnyView](https://developer.apple.com/documentation/swiftui/anyview)                         | `struct`   | Supporting view types        | View fundamentals         |
| 🟢     | [EmptyView](https://developer.apple.com/documentation/swiftui/emptyview)                     | `struct`   | Supporting view types        | View fundamentals         |
| ⭕     | [EquatableView](https://developer.apple.com/documentation/swiftui/equatableview)             | `struct`   | Supporting view types        | View fundamentals         |
| ⭕     | [SubscriptionView](https://developer.apple.com/documentation/swiftui/subscriptionview)       | `struct`   | Supporting view types        | View fundamentals         |
| 🟢     | [TupleView](https://developer.apple.com/documentation/swiftui/tupleview)                     | `struct`   | Supporting view types        | View fundamentals         |
||||||
| ⭕     | [Text](https://developer.apple.com/documentation/swiftui/text)                               | `struct`   | Text display                 | Text input and output     |
| ⭕     | [Label](https://developer.apple.com/documentation/swiftui/label)                             | `struct`   | Text display                 | Text input and output     |
| ⭕     | [TextField](https://developer.apple.com/documentation/swiftui/textfield)                     | `struct`   | Text entry                   | Text input and output     |
| ⭕     | [SecureField](https://developer.apple.com/documentation/swiftui/securefield)                 | `struct`   | Text entry                   | Text input and output     |
| ⭕     | [TextEditor](https://developer.apple.com/documentation/swiftui/texteditor)                   | `struct`   | Text entry                   | Text input and output     |
| ⭕     | [Font](https://developer.apple.com/documentation/swiftui/font)                               | `struct`   | Text style                   | Text input and output     |
| ⭕     | [TextAlignment](https://developer.apple.com/documentation/swiftui/textalignment)             | `enum`     | Text layout                  | Text input and output     |
||||||
| ⭕     | [Image](https://developer.apple.com/documentation/swiftui/image)                             | `struct`   | Image fundamentals           | Images                    |
| ⭕     | [Image.Scale](https://developer.apple.com/documentation/swiftui/image/scale)                 | `enum`     | Image fundamentals           | Images                    |
| ⭕     | [Image.Orientation](https://developer.apple.com/documentation/swiftui/image/orientation)     | `enum`     | Image fundamentals           | Images                    |
| ⭕     | [Image.ResizingMode](https://developer.apple.com/documentation/swiftui/image/resizingmode)   | `enum`     | Image fundamentals           | Images                    |
| ⭕     | [AsyncImage](https://developer.apple.com/documentation/swiftui/asyncimage)                   | `struct`   | Asynchronously loaded images | Images                    |
| ⭕     | [AsyncImagePhase](https://developer.apple.com/documentation/swiftui/asyncimagephase)         | `enum`     | Asynchronously loaded images | Images                    |
||||||
| ⭕     | [Button](https://developer.apple.com/documentation/swiftui/button)                           | `struct`   | Buttons                      | Controls and indicators   |
| ⭕     | [Link](https://developer.apple.com/documentation/swiftui/link)                               | `struct`   | Links                        | Controls and indicators   |
| ⭕     | [Menu](https://developer.apple.com/documentation/swiftui/menu)                               | `struct`   | Menus                        | Controls and indicators   |
| ⭕     | [Slider](https://developer.apple.com/documentation/swiftui/slider)                           | `struct`   | Value inputs                 | Controls and indicators   |
| ⭕     | [Stepper](https://developer.apple.com/documentation/swiftui/stepper)                         | `struct`   | Value inputs                 | Controls and indicators   |
| ⭕     | [Toggle](https://developer.apple.com/documentation/swiftui/toggle)                           | `struct`   | Value inputs                 | Controls and indicators   |
| ⭕     | [Picker](https://developer.apple.com/documentation/swiftui/picker)                           | `struct`   | Pickers                      | Controls and indicators   |
| ⭕     | [DatePicker](https://developer.apple.com/documentation/swiftui/datepicker)                   | `struct`   | Pickers                      | Controls and indicators   |
| ⭕     | [ColorPicker](https://developer.apple.com/documentation/swiftui/colorpicker)                 | `struct`   | Pickers                      | Controls and indicators   |
| ⭕     | [Gauge](https://developer.apple.com/documentation/swiftui/gauge)                             | `struct`   | Indicators                   | Controls and indicators   |
| ⭕     | [ProgressView](https://developer.apple.com/documentation/swiftui/progressview)               | `struct`   | Indicators                   | Controls and indicators   |
||||||
| ⭕     | [Shape](https://developer.apple.com/documentation/swiftui/shape)                             | `protocol` | Shape fundamentals           | Shapes                    |
| ⭕     | [InsettableShape](https://developer.apple.com/documentation/swiftui/insettableshape)         | `protocol` | Shape fundamentals           | Shapes                    |
| ⭕     | [ShapeRole](https://developer.apple.com/documentation/swiftui/shaperole)                     | `enum`     | Shape fundamentals           | Shapes                    |
| ⭕     | [StrokeStyle](https://developer.apple.com/documentation/swiftui/strokestyle)                 | `struct`   | Shape fundamentals           | Shapes                    |
| ⭕     | [FillStyle](https://developer.apple.com/documentation/swiftui/fillstyle)                     | `struct`   | Shape fundamentals           | Shapes                    |
| ⭕     | [Rectangle](https://developer.apple.com/documentation/swiftui/rectangle)                     | `struct`   | Rectangular shapes           | Shapes                    |
| ⭕     | [RoundedRectangle](https://developer.apple.com/documentation/swiftui/roundedrectangle)       | `struct`   | Rectangular shapes           | Shapes                    |
| ⭕     | [RoundedCornerStyle](https://developer.apple.com/documentation/swiftui/roundedcornerstyle)   | `enum`     | Rectangular shapes           | Shapes                    |
| ⭕     | [Circle](https://developer.apple.com/documentation/swiftui/circle)                           | `struct`   | Circular shapes              | Shapes                    |
| ⭕     | [Ellipse](https://developer.apple.com/documentation/swiftui/ellipse)                         | `struct`   | Circular shapes              | Shapes                    |
| ⭕     | [Capsule](https://developer.apple.com/documentation/swiftui/capsule)                         | `struct`   | Circular shapes              | Shapes                    |
| ⭕     | [Path](https://developer.apple.com/documentation/swiftui/path)                               | `struct`   | Custom shapes                | Shapes                    |
| ⭕     | [ScaledShape](https://developer.apple.com/documentation/swiftui/scaledshape)                 | `struct`   | Transformed shapes           | Shapes                    |
| ⭕     | [RotatedShape](https://developer.apple.com/documentation/swiftui/rotatedshape)               | `struct`   | Transformed shapes           | Shapes                    |
| ⭕     | [OffsetShape](https://developer.apple.com/documentation/swiftui/offsetshape)                 | `struct`   | Transformed shapes           | Shapes                    |
| ⭕     | [ShapeStyle](https://developer.apple.com/documentation/swiftui/shapestyle)                   | `protocol` | Shape styles                 | Shapes                    |
||||||
| ⭕     | [Canvas](https://developer.apple.com/documentation/swiftui/canvas)                           | `struct`   | Immediate mode drawing       | Drawing and graphics      |
| ⭕     | [GraphicsContext](https://developer.apple.com/documentation/swiftui/graphicscontext)         | `struct`   | Immediate mode drawing       | Drawing and graphics      |
| ⭕     | [Color](https://developer.apple.com/documentation/swiftui/color)                             | `struct`   | Colors                       | Drawing and graphics      |
| ⭕     | [Gradient](https://developer.apple.com/documentation/swiftui/gradient)                       | `struct`   | Colors                       | Drawing and graphics      |
| ⭕     | [GeometryReader](https://developer.apple.com/documentation/swiftui/geometryreader)           | `struct`   | Measurement                  | Drawing and graphics      |
| ⭕     | [GeometryProxy](https://developer.apple.com/documentation/swiftui/geometryproxy)             | `struct`   | Measurement                  | Drawing and graphics      |
| ⭕     | [Axis](https://developer.apple.com/documentation/swiftui/axis)                               | `enum`     | Geometric constructs         | Drawing and graphics      |
| ⭕     | [Angle](https://developer.apple.com/documentation/swiftui/angle)                             | `struct`   | Geometric constructs         | Drawing and graphics      |
| ⭕     | [UnitPoint](https://developer.apple.com/documentation/swiftui/unitpoint)                     | `struct`   | Geometric constructs         | Drawing and graphics      |
||||||
| ⭕     | [HStack](https://developer.apple.com/documentation/swiftui/hstack)                           | `struct`   | Stacks                       | Layout containers         |
| ⭕     | [VStack](https://developer.apple.com/documentation/swiftui/vstack)                           | `struct`   | Stacks                       | Layout containers         |
| ⭕     | [ZStack](https://developer.apple.com/documentation/swiftui/zstack)                           | `struct`   | Stacks                       | Layout containers         |
| ⭕     | [LazyHStack](https://developer.apple.com/documentation/swiftui/lazyhstack)                   | `struct`   | Lazy stacks                  | Layout containers         |
| ⭕     | [LazyVStack](https://developer.apple.com/documentation/swiftui/lazyvstack)                   | `struct`   | Lazy stacks                  | Layout containers         |
| ⭕     | [LazyHGrid](https://developer.apple.com/documentation/swiftui/lazyhgrid)                     | `struct`   | Lazy grids                   | Layout containers         |
| ⭕     | [LazyVGrid](https://developer.apple.com/documentation/swiftui/lazyvgrid)                     | `struct`   | Lazy grids                   | Layout containers         |
| ⭕     | [GridItem](https://developer.apple.com/documentation/swiftui/griditem)                       | `struct`   | Lazy grids                   | Layout containers         |
| ⭕     | [Spacer](https://developer.apple.com/documentation/swiftui/spacer)                           | `struct`   | Separators                   | Layout containers         |
| ⭕     | [Divider](https://developer.apple.com/documentation/swiftui/divider)                         | `struct`   | Separators                   | Layout containers         |
| 🟠     | [Alignment](https://developer.apple.com/documentation/swiftui/alignment)                     | `struct`   | Alignment                    | Layout containers         |
| 🟠     | [HorizontalAlignment](https://developer.apple.com/documentation/swiftui/horizontalalignment) | `struct`   | Alignment                    | Layout containers         |
| 🟠     | [VerticalAlignment](https://developer.apple.com/documentation/swiftui/verticalalignment)     | `struct`   | Alignment                    | Layout containers         |
| ⭕     | [Edge](https://developer.apple.com/documentation/swiftui/edge)                               | `enum`     | Edges                        | Layout containers         |
| ⭕     | [HorizontalEdge](https://developer.apple.com/documentation/swiftui/horizontaledge)           | `enum`     | Edges                        | Layout containers         |
| ⭕     | [VerticalEdge](https://developer.apple.com/documentation/swiftui/verticaledge)               | `enum`     | Edges                        | Layout containers         |
| ⭕     | [EdgeInsets](https://developer.apple.com/documentation/swiftui/edgeinsets)                   | `struct`   | Insets                       | Layout containers         |
||||||
| ⭕     | [List](https://developer.apple.com/documentation/swiftui/list)                               | `struct`   | Lists                        | Collection containers     |
| ⭕     | [Section](https://developer.apple.com/documentation/swiftui/section)                         | `struct`   | Lists                        | Collection containers     |
| ⭕     | [ForEach](https://developer.apple.com/documentation/swiftui/foreach)                         | `struct`   | Lists                        | Collection containers     |
| ⭕     | [DynamicViewContent](https://developer.apple.com/documentation/swiftui/dynamicviewcontent)   | `protocol` | Lists                        | Collection containers     |
| ⭕     | [Table](https://developer.apple.com/documentation/swiftui/table)                             | `struct`   | Tables                       | Collection containers     |
| ⭕     | [TableColumn](https://developer.apple.com/documentation/swiftui/tablecolumn)                 | `struct`   | Tables                       | Collection containers     |
| ⭕     | [TableRow](https://developer.apple.com/documentation/swiftui/tablerow)                       | `struct`   | Tables                       | Collection containers     |
| ⭕     | [Group](https://developer.apple.com/documentation/swiftui/group)                             | `struct`   | Groups                       | Collection containers     |
| ⭕     | [ScrollView](https://developer.apple.com/documentation/swiftui/scrollview)                   | `struct`   | Scroll views                 | Collection containers     |
| ⭕     | [ScrollViewReader](https://developer.apple.com/documentation/swiftui/scrollviewreader)       | `struct`   | Scroll views                 | Collection containers     |
| ⭕     | [ScrollViewProxy](https://developer.apple.com/documentation/swiftui/scrollviewproxy)         | `struct`   | Scroll views                 | Collection containers     |
||||||
| ⭕     | [NavigationView](https://developer.apple.com/documentation/swiftui/navigationview)           | `struct`   | Navigation                   | Presentation containers   |
| ⭕     | [NavigationLink](https://developer.apple.com/documentation/swiftui/navigationlink)           | `struct`   | Navigation                   | Presentation containers   |
| ⭕     | [TabView](https://developer.apple.com/documentation/swiftui/tabview)                         | `struct`   | Tab views                    | Presentation containers   |
| ⭕     | [HSplitView](https://developer.apple.com/documentation/swiftui/hsplitview)                   | `struct`   | Split views                  | Presentation containers   |
| ⭕     | [VSplitView](https://developer.apple.com/documentation/swiftui/vsplitview)                   | `struct`   | Split views                  | Presentation containers   |
