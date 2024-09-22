# :simple-npm:  Using npm packages

While GPT Engineer is powerful on its own, enabling users to build sophisticated web applications, you can leverage npm packages for more advanced and extended features. These packages help you build even more complex and feature-rich applications with ease.

!!! info "What is npm?"
    npm (Node Package Manager) is a package manager for JavaScript that allows developers to share and reuse code. It hosts thousands of packages, which are pieces of reusable code, that you can easily integrate into your projects to extend functionality.

    You can access it <a href="https://www.npmjs.com/" target="_blank" rel="noopener noreferrer">at npmjs.com</a>.

---

## Using npm packages for advanced features

Let's say you'd like to create a tool that enables you to arrange your tasks in different Kanban boards, similar to many popular project management tools. You can prompt GPT Engineer to build this tool from scratch, but it might be slower and more challenging to achieve the desired functionality.

Instead, you can use npm packages to simplify and speed up the process. For example, the <a href="https://www.npmjs.com/package/@hello-pangea/dnd" target="_blank" rel="noopener noreferrer">hello-pangea/dnd</a> package provides robust drag-and-drop functionality. By using this package, you can easily create a Kanban board where users can add new cards, move them within columns, and reorder them.

!!! example "Integrating drag-and-drop npm package"
    To incorporate the hello-pangea/dnd package into your GPT Engineer project, you can use the following prompt:

    ```
    Use the hello-pangea/dnd npm package to add drag-and-drop functionality to my Kanban board app. 
    Ensure users can add new cards, move them within columns, and reorder them.

    ```

This prompt directs GPT Engineer to integrate the package into your project, making it easier to achieve the desired functionality. Depending on other requirements, your result might look somewhat like this.

![GPT Engineer implemented drag-and-drop Kanban functionality](/assets/npm-example-using-pangea-dnd.png)

---

## Quality and responsibility

It’s important to note that while npm packages can significantly enhance your projects, GPT Engineer cannot guarantee the quality or reliability of these third-party packages. 

The functionality and performance of npm packages are the responsibility of the end user, and it’s essential to thoroughly test and validate them within your application.

### Increasing your chances of success

Here are a few strategies to help you evaluate the legitimacy and quality of npm packages before integrating them into your projects.

- **Number of downloads** - Check the number of downloads on the package's npm page. A high number of downloads typically indicates that the package is widely used and trusted by the community.

- **Maintenance status and latest updates** - Look at the package's repository to see if it is actively maintained. Frequent commits, recent updates, and responsiveness to issues are good indicators of an actively maintained package. Ensure the package has recent updates. A package that is regularly updated is more likely to be compatible with the latest versions of dependencies and security practices.

- **Reviews and community feedback** - A lot of npm packages are hosted on GitHub or similar code repositories. Read through reviews, discussions, and feedback from other developers on those locations, too. Additionally, specific developer forums can provide insights into the package's reliability and any potential issues.
