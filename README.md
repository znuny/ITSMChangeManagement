<div align="center">
  <a href="https://www.znuny.org">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://www.znuny.com/assets/znuny-logo.svg">
      <img alt="Znuny" src="https://www.znuny.com/assets/znuny-logo-black.svg" width="300">
    </picture>
  </a>

  ![Build status](https://badge.proxy.znuny.com/ITSMChangeManagement/rel-7_3)
</div>

ITSM Change Management
=====================

**Feature List**

This package provides the ITSM Change Management functionality for Znuny. It includes:

- **Changes**: Create, edit, schedule and manage changes with full lifecycle and state machine
- **Work Orders**: Attach work orders to changes, assign agents and track execution
- **CAB (Change Advisory Board)**: CAB templates, members and approval workflows
- **Templates**: Change and work order templates for standardized processes
- **Conditions**: Configurable change conditions for approval and state transitions
- **Notifications**: Admin-configurable notification events for changes and work orders
- **Reporting**: Change and work order search, print and report views
- **Customer Interface**: Customer-facing change schedule view

**Prerequisites**

- Znuny 7.3
- ITSMCore 7.3.1

**Installation**

Install via Admin interface → Package Manager. The package is part of the Znuny ITSM stack and can be installed from the Znuny repository or from a built .opm file.

**Configuration**

Configuration is available in the System Configuration under:

- ITSMChangeManagement (change and work order settings)
- Admin → ITSM Change Management (state machine, notifications, CIP allocation)

Relevant agent actions (for ACLs) include `AgentITSMChange*`, `AgentITSMWorkOrder*`, `AgentITSMTemplate*` and admin modules `AdminITSMChangeNotification`, `AdminITSMStateMachine`, `AdminITSMChangeCIPAllocate`.

**Download**

Source code is available in the [ITSMChangeManagement repository](https://download.znuny.org/releases/itsm/latest/). For packaged releases, use the Znuny package repository or build from source.

**Commercial Support**

For this extension and for Znuny in general visit [www.znuny.com](https://www.znuny.com). Looking forward to hear from you!

Enjoy!

Your Znuny Team!

[www.znuny.com](https://www.znuny.com)
