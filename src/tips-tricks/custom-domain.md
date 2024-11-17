# :earth_africa: Setting up a custom domain

When you create a project, Lovable makes it easy to [publish it](../features/deploy.md) with the click of a button.

If you want to have a custom domain, see below.

## Using Netlify (<1 minute)

You can host on Netlify for free with a custom domain.

The steps are:

1. Open your project in Lovable and click GitHub then "create repository" if you haven't already done so.
2. Go to: https://app.netlify.com/start/deploy?repository=PASTE_YOUR_GITHUB_PROJECTS_URL_HERE and follow instructions.
3. Configure a custom domain for your Netlify site, instructions [here](https://docs.netlify.com/domains-https/custom-domains/#assign-a-domain-to-a-production-site).

Note, you need to purchase the domain yourself which is usually not free.

## Using Vercel (More Control, More Technical)

If you prefer a method that gives you more control over your deployments, you can use Vercel. Understand that the instructions below are highly advanced and expect you to have some understanding of branches, github, pull requests, and merging pull requests. Don't proceed if you aren't comfortable with these technical concepts.

Here’s how to set it up:

1. **Set up GitHub in your app**: Click on the gear icon in your app settings to configure GitHub. This will commit your code to the "main" branch and create a repository. Once you do this, all changes made to code in your app will automatically be commited to your github repo on each change.
   
2. **Ensure your app is working**: Make sure your app is at a functional level and free of bugs before proceeding.

3. **Set up Vercel**: Go to the [Vercel website](https://vercel.com/) and create an account. Configure your domain and set the necessary GitHub permissions (make sure to handle DNS settings properly).

4. **Automatic deployments**: Vercel will automatically deploy the latest changes from the "main" branch each time it is updated. You can make one or two small changes to your app on lovable and then visit Vercel deployments to ensure updates are being redeployed from "main". Once confirmed, do the next step:

5. **Create a Development branch**: In your GitHub repository settings in lovable, commit all new changes to a second branch called "Development" (or whatever you want).

6. **Configure Vercel Builds**: Go back to Vercel and adjust your settings to ensure it only builds production deployments from the "main" branch. 

![image](https://github.com/user-attachments/assets/08f6cd18-5d12-44da-a2cf-c07687eeab44)

7. **Make changes in Development**: Work on your app in the Lovable. Any changes will go to the Development branch now and wont automatically be deployed via Vercel.

8. **Deploy new changes**: When you're ready to push new changes to your domain, go to GitHub and perform a pull request from Development to Main. Once you complete and merge the pull request, Vercel will automatically deploy the updates in about one minute. 

![image](https://github.com/user-attachments/assets/77244d5d-f9e1-4e5b-b372-5e1ea4003d63)


### Notes:

- If you need more detailed training on this process, feel free to reach out to our community champions member "mayuronx".

![image](https://github.com/user-attachments/assets/1b29581f-0942-432b-af30-71be43a921db)

- **Supabase Consideration**: Currently, you can only utilize one Supabase instance. So, if you make extensive SQL changes, it could potentially break production. Unfortunately, we can't yet provide specific guidelines for this scenario as it's complex. Frequently test your production environment if you make changes related to Supabase.
