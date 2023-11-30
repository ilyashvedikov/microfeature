import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects/")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "A template for a new example target",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Example/Sources/AppDelegate.swift",
            templatePath: "Example.stencil"
        ),
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Example/Resources/LaunchScreen.storyboard",
            templatePath: "ExampleResources.stencil"
        )
    ]
)
