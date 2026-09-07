# NIT Jamshedpur Hostel Complaint Management System

## Overview
A public-facing, mobile-first frontend prototype for NIT Jamshedpur hostel students and wardens. It helps students report and track hostel issues, and helps wardens manage and efficiently resolve them. The production system will require a secure backend.

## Roles
- **Students:** roll-number login; submit complaints; view only their own complaints, status updates, history, profile, in-site notifications, and optional one-way warden responses.
- **Wardens:** username/password mock login; view, assign, update, reply to, resolve, group, and batch-resolve complaints; view statistics; add/manage categories.

## Complaint system
- Student information: name, block, room number; roll number is optional in a complaint record.
- Categories: Electricity, Washroom, Water, Cleanliness, Room/Furniture, LAN/Wi-Fi, Security, Maintenance, Carpentry, Other. Wardens can add categories.
- Submission: category, description, optional photo/video.
- Workflow only: **Submitted → Assigned → In Progress → Resolved**.
- No priority, urgent, pending, closed, or cancellation state.
- Wardens can resolve multiple complaints via manual selection or category + block matching, with confirmation.

## Screens
Student login, warden login, student dashboard, new complaint, my complaints, complaint details, complaint history, profile, warden dashboard, complaint management, statistics, and category management.

## Design and notifications
Modern, professional blue-and-white NIT Jamshedpur-inspired interface. Notifications are inside the website only. Wardens may leave a one-way response; students cannot reply.

## Demo limitation
This static frontend uses fictional demo data and browser localStorage only. It is not a shared college database, does not provide secure authentication, and must be connected to a backend/storage service before real deployment.
