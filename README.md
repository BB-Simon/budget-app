<a name="readme-top"></a>

<div align="center">
  <h3><b>Budget app</b></h3>
</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Budget app\] ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo](#live-demo)
  - [📺 Presentation ](#presentation)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run the project](#run-the-project)
    - [Run tests](#run-tests)
  - [👤 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Budget app] <a name="about-project"></a>

**The Budget app** is a web app that helps users categorize and manage their transactions for easy expense tracking. Stay organized and gain insights into your spending habits with this very easy-to-use and user-friendly tool.

## 🛠 Built With <a name="built-with-Ruby"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Technologies</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
    <li><a href="https://github.com/heartcombo/devise">Devise for authentication</a></li>
    <li><a href="https://github.com/rspec/rspec-rails">Rspec rails for unit tests</a></li>
    <li><a href="https://tailwindcss.com/">Tailwindcss for styles</a></li>
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://budget-app-01.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📺 Presentation <a name="presentation"></a>

- [Link to video presentation](https://drive.google.com/file/d/1ZvpdBBz2nP4hW6BD4Ybvxat2yH8WLdmx/view?usp=sharing)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Features -->

### Key Features <a name="key-features"></a>
- [x] Splash screen:
  - A simple page with the name of your app (yes, you need to choose one), and links to the sign up and log in pages.
- [x] Sign up and log in pages
  - The user should be able to register in the app with full name, email and password (all mandatory).
  - The user can log into the app using email and password.
  - If the user is not logged in, they can't access pages that require the user to be logged in (all the pages described below).
- [x] Home page (categories page)
  - When the user logs in, they are presented with the categories page.
  - For each category, the user can see their name, icon and the total amount of all the transactions that belongs to that category.
  - When the user clicks (or taps) on a category item, the application navigates to the transactions page for that category.
  - There is a button "add a new category" at the bottom that brings the user to the page to create a new category.
- [x] Transactions page
  - For a given category, the list of transactions is presented, ordered by the most recent.
  - At the top of the page the user could see the total amount for the category (sum of all of the amounts of the transactions in that category).
  - There is a button "add a new transaction" at the bottom that brings the user to the page to create a new transaction.
  - When the user clicks on the "Back" button (<), the user navigates to the home page.
- [x] "Add a new category" page
  - The user fills out a form to create a new category, indicating their name and icon (both mandatory).
  - The user clicks (or taps) the "Save" button to create the new category, and is taken to the home page on success.
  - When the user clicks on the "Back" button (<), the user navigates to the home page.
- [x] "Add a new transaction" page
  - The user fills out a form to create a new transaction with:
    - name (mandatory)
    - amount (mandatory)
    - categories (mandatory at least one)
  - The user click (or taps) the "Save" button to create the new transaction, and is taken to the transactions page for that category.
  - When the user clicks on the "Back" button (<), the user navigates to the transactions page for that category.

- [x] Create unit and integration tests for all the most important components of your RoR application.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need to have the following in local computer:

- [ ] install Ruby
- [ ] install Ruby on Rails
- [ ] install PostgreSQL

### Setup

Clone this repository to your desired folder:

- [ ] Open terminal
- [ ] git clone https://github.com/BB-Simon/budget-app.git
- [ ] cd budget-app
  

### Install

Install this project with:

 - [ ] bundle install


### Run the project

To run the project, run the following command:

- [ ] rails server


### Run tests

To run tests, run the following command:

- [ ] Rspec spec

<!-- AUTHORS -->

## 👤 Author <a name="authors"></a>

👤 **BB Simon**

- GitHub: [@githubhandle](https://github.com/BB-Simon) 
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/bb-simon/)
- Twitter: [@twitterhandle](https://twitter.com/bb_s_imon) 


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] implement some UX improvements: include transitions and/or animations, etc.
- [ ] Make sure that a decent desktop design for the webapp
- [ ] Implement the left side menu to improve the navigability of the app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/BB-Simon/budget-app/issues).


<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

- Give a ⭐️ if you like this project!


<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

-  I would like to thank [Microverse](https://www.microverse.org/) for giving us this opportunity to learn and grow as a developer by providing me with Budget app idea with it's wireframes.


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT licensed](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
