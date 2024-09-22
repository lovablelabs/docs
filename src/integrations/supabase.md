# :simple-supabase: Supabase Integration

!!! warning "Supabase integration is in early alpha"
    We made Supabase integration available to all our users, but we want to emphasize that it's still in early alpha and that changes are likely.

## Overview

[Supabase](https://supabase.com/) is an open-source alternative to Firebase, offering real-time databases, authentication services, and file storage. It is built atop [PostgreSQL](https://www.postgresql.org/), providing robust SQL querying capabilities and seamless integration with existing tools and frameworks. Supabase also features an intuitive web interface for effortless management of users and data.

Discover more about Supabase [here](https://supabase.com/docs).

To incorporate Supabase into your GPT Engineer application, start with these steps:

## Supabase setup

Connecting your GPT Engineer app to Supabase is straightforward. Input your Supabase API URL and Anon Key under the project settings tab to access your data within the GPT Engineer environment. This setup allows you to authenticate users and manage data effortlessly.

### Step 1: Create a Supabase account

Register a new Supabase account [here](https://app.supabase.com/sign-up) or [sign in](https://app.supabase.com/sign-in) if you already have one.

### Step 2: Create a new project in Supabase.

Click on + New Project, complete the necessary fields, and allow a few minutes for setup.

### Step 3: Create table(s)

Create table(s) as needed. If you're starting out, consider turning off the Enable Row Level Security ([RLS](https://supabase.com/docs/guides/database/postgres/row-level-security)) feature to allow unrestricted access to the table data.

!!! warning "On RLS (Row Level Security)"
    While deactivating Row Level Security (RLS) facilitates testing and development, it's advisable to activate RLS and configure proper access policies in line with your application's needs before going live.

### Step 4: Connect Supabase to GPT Engineer

Link your GPT Engineer app with the necessary keys.

In your Supabase project, go to Project Settings > API and copy the Project URL.

- In GPT Engineer, access the Settings pane
- Paste the project URL and anon key (located under Supabase Project API keys) into Project > Supabase

With the completion of these steps, your Supabase setup is ready! You can now proceed to integrate Supabase Authentication and Database functionalities into your app.

!!! info "Updating your Supabase Integration"
    Remember to press the "Refresh integration" button after making changes to tables in Supabase to update your project integration accordingly.

## Supabase Database

Supabase offers a comprehensive Postgres database solution. Supabase enhances the PostgreSQL experience by providing tools that simplify database management. These include a table view that resembles a spreadsheet, capabilities to manage and replicate data relationships, a SQL editor, real-time database interactions, automated backups, and easy data import from CSV or Excel files. Additionally, users can activate various PostgreSQL extensions via the Supabase dashboard.

In order to start building UI that uses your data stored in Supabase follow these steps:

### Retrieving data

!!! example "Retrieve data to display current events."
    Example prompt:

    ```
    Users should be able to view all upcoming events listed on the events page
    ```

### Adding data

!!! example "Add new events to keep your content up-to-date."
    Example prompt:

    ```
    Users should be able to add new events with detailed information through a form
    ```

### Updating data

!!! example "Update existing events as needed."
    Example prompt:

    ```
    Users should be able to modify details of existing events
    ```

### Deleting data

!!! example "Remove events that are no longer relevant."
    Example prompt:

    ```
    Users should be able to delete events
    ```


### Adding all of these in one go

!!! example "Manage all aspects of event data through a comprehensive interface."
    Example prompt:

    ```
    Users should be able to add, view, update, and delete events seamlessly in the events page
    ```

## Supabase Authentication

This section details how to integrate the Supabase Authentication service into your GPT Engineer project, providing specific guidelines for setup and usage.

### Initial setup

To initiate authentication, ensure that you have already connected Supabase to your project.

To add a basic login page to your project, simply run a prompt similar to the one below.

!!! example "Adding a basic Login page"
    Example prompt:

    ```
    Add login
    ```


To start making some of your pages available only to logged in users, you will need to tell GPT Engineer to make them protected.
!!! example "Creating protected pages"
    Example prompt:

    ```
    Create a protected page for /events
    ```

## More advanced use cases

### I want users to only see their own data

To protect your data and specify user permissions, you need to enable Row Level Security (RLS) and establish policies. This can be done in the Supabase dashboard by navigating to the Table Editor, selecting a table, and activating RLS. Afterward, proceed to Database -> Policies to create policies that determine the actions authenticated and non-authenticated users are allowed to perform.

### I want to store additional information about my users

If you want to store additional data about your users (beyond their email), you must create a table to hold your users' information, e.g. their names, and profile pictures.

!!! info
    The "users" table in the auth (protected) schema holds private information used by Supabase for authentication purposes, such as emails, encrypted passwords, and confirmation tokens.

The easiest way to do this it to navigate to Project -> SQL Editor -> Quickstart and to select the "User management starter" query. Running this will automatically create a Profiles table connected to the `auth.users` table with the following attributes: username, full_name, avatar_url and website.

## Troubleshooting

### Row Level Security & Policies

Often, difficulties in fetching or updating data from Supabase through GPT Engineer workflows are linked to the table's security settings and policies.

For instance, activating Row-Level Security (RLS) on a Supabase table means you cannot access its data unless a policy is in place that permits everyone to read from that table.

## Video tutorial

### Building a fullstack app with GPT Engineer and Supabase

In this brief tutorial, we are showing you how to build a fullstack app using GPT Engineer and Supabase.

<div align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/6LztQnmRpew?si=bItUu27tvkJx-fTS" title="Build a fullstack app using GPT Engineer and Supabase." frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>
