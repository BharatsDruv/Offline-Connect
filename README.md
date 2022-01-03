


<!--
*** Thanks for checking out the Offline-Connect. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
<a>
    <img src="https://github.com/BharatsDruv/Offline-Connect/blob/main/images/favicon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Offline-Connect</h3>

  <p align="center">
    Intranet mailing system for intra-org communication.
    <br />
    <a href="https://github.com/BharatsDruv/Offline-Connect/issues">Report Bug</a>
    ·
    <a href="https://github.com/BharatsDruv/Offline-Connect/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

 <img src="https://raw.githubusercontent.com/BharatsDruv/Offline-Connect/master/Offline-Connect.png" alt="Logo" width="768" height="432">

This is an web-application build for smooth communication between departments of same organisations. <br>
Features includes: New user registration, sign in of existing user, conventional mail options like Inbox, Compose, Send Messages. Compose option allows us to compose new mails that can be sent to any user of the organization. Inbox option shows all messages received.
Need of the application:

Here's why:
* Secure Communication: It uses intranet or deployed on organisation's server, which prevals it from attacks of any foriegn access and it restrict the network access as it works on private IP.
* It doesn't require internet for connectivity which helps organisation to save money and customise the features according to the needs.:smile:

#### Database Schema (Database: offline_connect)
<pre>
+---------------------------+
| Tables_in_offline_connect |
+---------------------------+
| mails                     |
| organisation              |
| user_org                  |
| users                     |
+---------------------------+

</pre>
* Table: mails
<pre> 
+----------------+---------------+------+-----+---------+-------+
| Field          | Type          | Null | Key | Default | Extra |
+----------------+---------------+------+-----+---------+-------+
| hashcode       | varchar(20)   | YES  |     | NULL    |       |
| sender_email   | varchar(40)   | YES  |     | NULL    |       |
| receiver_email | varchar(40)   | YES  |     | NULL    |       |
| subject        | varchar(100)  | YES  |     | NULL    |       |
| body           | varchar(1000) | YES  |     | NULL    |       |
+----------------+---------------+------+-----+---------+-------+
</pre> 
* Table: organisation
<pre> 
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| org_name | varchar(20) | YES  |     | NULL    |       |
| hashcode | varchar(20) | NO   | PRI |         |       |
+----------+-------------+------+-----+---------+-------+
</pre> 
* Table: user_org
<pre> 
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| email    | varchar(40) | YES  |     | NULL    |       |
| hashcode | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
</pre> 
* Table: users
<pre> 
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Name     | varchar(20) | YES  |     | NULL    |       |
| email    | varchar(40) | NO   | PRI |         |       |
| password | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
</pre> 
Of course, this application is not market ready or a product. So I'll be adding more in the near future. You may also suggest changes by forking this repo and creating a pull request or opening an issue. 

A list of commonly used resources that I find helpful are listed in the acknowledgements.

### Built With


These are the tools and plugins we've used to built this application
* [Java](https://www.java.com/en/)
* [JSP](https://www.oracle.com/java/technologies/jspt.html)
* [Servlet](https://docs.oracle.com/javaee/6/api/javax/servlet/Servlet.html#:~:text=A%20servlet%20is%20a%20small,HTTP%2C%20the%20HyperText%20Transfer%20Protocol.&text=http.,a%20servlet%20from%20the%20server.)
* [MySQL](https://www.mysql.com/)
* [Tomcat](https://tomcat.apache.org/)



<!-- GETTING STARTED -->
## Getting Started

Instructions on setting up Offline-Connect locally.
To get a local copy up and running follow these simple steps.

### Prerequisites

* [Install Eclipse](https://www.eclipse.org/downloads/packages/installer)
* [Install MySQL](https://www.mysql.com/)
* [Add JDBC Connectivity](https://www.javahelps.com/2015/08/add-mysql-jdbc-driver-to-eclipse.html)
* Set Up SQL Database
  </br>


### Installation

1. Clone the repo
   ```sh
   git clone BharatsDruv/Offline-Connect
   ```
2. Import in Eclipse

3. Run the app
   Using "Run as server" option


<!-- USAGE EXAMPLES -->
## Usage

* Offline-Connect can be enhanced to be a global communication medium for multinational companies.
* As organization grows in size in terms of departments and functionalities, it requires a quick and efficient system to achieve instant communication b/w employees of same department or b/w departments. 
* Offline-Connect serves organization’s needs in a consistent and transparent manner. 



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/BharatsDruv/Offline-Connect/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

* Bharat Shrivastava - [@LinkedIn](https://www.linkedin.com/in/bharatshrivastava/) - bharatsdruv@gmail.com 
* Ayushi Maheshwari - [@LinkedIn](https://www.linkedin.com/in/ayushi-maheshwari-806055184/) - ayushimjhs119@gmail.com
* Amit Jmara - [@LinkedIn](https://www.linkedin.com/in/amit-jamra-3a2393184/)


Project Link: [https://github.com/BharatsDruv/Offline-Connect](https://github.com/BharatsDruv/Offline-Connect)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Font Awesome](https://fontawesome.com)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/BharatsDruv/Offline-Connect.svg?style=for-the-badge
[contributors-url]: https://github.com/BharatsDruv/Offline-Connect/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/BharatsDruv/Offline-Connect.svg?style=for-the-badge
[forks-url]: https://github.com/BharatsDruv/Offline-Connect/network/members
[stars-shield]: https://img.shields.io/github/stars/BharatsDruv/Offline-Connect.svg?style=for-the-badge
[stars-url]: https://github.com/BharatsDruv/Offline-Connect/stargazers
[issues-shield]: https://img.shields.io/github/issues/BharatsDruv/Offline-Connect.svg?style=for-the-badge
[issues-url]: https://github.com/BharatsDruv/Offline-Connect/issues
[license-shield]: https://img.shields.io/github/license/BharatsDruv/Offline-Connect.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/bharatshrivastava/
[product-screenshot]: Offline-Connect.png
