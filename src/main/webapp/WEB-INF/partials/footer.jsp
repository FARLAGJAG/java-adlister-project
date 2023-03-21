<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .footer-info {
        border-right: 1px solid black;
    }
    .dropdown-item{
        display: flex;
        justify-content: center;
        margin-top: 1em;
    }
</style>
<footer class=" container-fluid footer bg-body-secondary px-5 pt-2">
    <section class="row d-flex justify-content-center">
        <div class="footer-info col-4 ">
            <h3 class="">About Us</h3>
            <p>
                Our mission at our retro video game console resale business is to provide gamers with access to classic
                gaming experiences through our curated selection of high-quality retro consoles.
                Above all, we believe that retro gaming is not just a hobby, but a culture that deserves to be
                celebrated and preserved. Our goal is to empower gamers to embrace their love of classic video games and
                share that passion with others, by providing a reliable source for high-quality retro gaming systems.
            </p>
        </div>
        <div class="footer-info col-4 ">
            <h3 class="">Categories</h3>
            <ul class="">
                <li class="list-unstyled "><a class="dropdown-item" href="#">SEGA</a></li>
                <li class="list-unstyled "><a class="dropdown-item" href="#">NINTENDO</a></li>
                <li class="list-unstyled "><a class="dropdown-item" href="#">PLAYSTATION</a></li>
                <li class="list-unstyled "><a class="dropdown-item" href="#">XBOX</a></li>
            </ul>
        </div>
        <div class=" col-4 ">
            <h3 class="">Company Info</h3>
            <ul class="list">
                <li class="list-group-item">600 Navarro St #300 </li>
                <li class="list-group-item">San Antonio, Texas 78205</li>
                <li class="list-group-item">(210) 802-7289</li>
                <li class="list-group-item"><a href="https://www.google.com/search?q=code+up&oq=code+up&aqs=chrome.0.0i131i355i433i512j46i131i175i199i433i512j46i20i131i263i433i512j0i131i433j0i512j69i60l3.4664j0j7&sourceid=chrome&ie=UTF-8#lrd=0x865c5f53ae9da8c7:0xfdc2b9d926713c13,1,,,,">Google Reviews</a></li>
            </ul>
        </div>
    </section>
    <section class="row bottom border-top border-dark mt-4">
        <div class="col-4">
            <img class="" src="../../img/facebook-48.png" alt="Facebook Logo" style="width: 40px" height="auto"/>
            <img class=""  src="../../img/instagram-48.png" alt="Instagram Logo" style="width: 40px" height="auto"/>
            <img class=""  src="../../img/twitter-64.png" alt="Twitter Logo" style="width: 36px" height="auto"/>
        </div>
        <div class="col-4 ">
            <p>
                Copyright 2023 GEN*CON TECHNOLOGIES
            </p>
        </div>
        <div class="col-4 d-flex justify-content-end">
            <img class=""  src="../../img/visa-master.png" alt="Visa and Master Card Logo" style="width: 6em" height="auto"/>
        </div>
    </section>

</footer>