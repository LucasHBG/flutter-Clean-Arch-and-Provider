# MVVM Best Practices + Clean Arch

**data:** This directory will hold all the network & local DB-related classes.

**models:** This directory will hold all the model classes for the API response and for clean architecture create inner directories for each API response model class.

**repository:** This directory will hold all the repository classes used in the project for communicating with ViewModel and for clean architecture create an inner directory for each module of your project.

**res:** This directory will hold all the classes related to the colors, dimensions & strings files.

**utils:** This will hold all the Utility classes for the project.

**view:** this directory will hold all the view-related classes with subdirectory as per the module & widget as well for the project.

**view_model:** this directory will hold all the ViewModel-related classes with subdirectory if required.

## Getting Started

This projects uses the following packages: 
    Provider -> State Managment, 
    Freezed  -> Code Generator for classes
    Http     -> Creating http calls POST/GET/PUT/DEL etc

# Freezed

When you alter anything in a class with `@freezed` annotation, then you should run the code at the terminal in order to rebuild all associated classes

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```