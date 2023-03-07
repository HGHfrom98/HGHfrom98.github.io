        $(function() {
            console.log(location.pathname);
            const pathname = String(location.pathname.split("/").splice(-1));
            const links = {
                "1": {
                    "url": "https://webpages.charlotte.edu/hgayhart/itis3135/tables.html",
                    "text": "Activity #2- Table",
                    "alt": "Table Activity"
                },
                "2": {
                    "url": "https://webpages.charlotte.edu/hgayhart/itis3135/forms.html",
                    "text": "Activity #3- Forms",
                    "alt": "Forms Activity"
                },
                "3": {
                    "url": "https://webpages.charlotte.edu/hgayhart/itis3135/firstscripts.html",
                    "text": "Activity #5- First JavaScript",
                    "alt": "Javascript website"
                },
                "4": {
                    "url": "https://webpages.charlotte.edu/hgayhart/itis3135/polygons.html",
                    "text": "Activity #6- Polygons",
                    "alt": "Polygon website"
                },
                "5": {
                    "url": "https://webpages.charlotte.edu/hgayhart/itis3135/calculator_try.html",
                    "text": "Activity #7 Calculator",
                    "alt": "Calculator website"
                }


            };

            const linkSeperator = " | ";
            let htmlString = "";

            for(var id in links) {
                if (pathname === links[id]['url']) {
                htmlString += links[id]['text'];
            } else {
                htmlString += '<a href="' + links[id]['url'] + '">' + links[id]['text'] + '</a>';
            }
            if (Number(id) < Object.keys(links).length) {
                htmlString += linkSeperator;
            }
        }
        $('#siteLinks').html(htmlString);



//set up automated validation links using w3Validator
document.getElementById("validation_link_html").setAttribute("href", "https://validator.w3.org/check?uri=" + location.href);
document.getElementById("validation_link_css").setAttribute("href", "https://jigsaw.w3.org/css-validator/validator?uri=" + location.href);
    });



    //NavBar 2

    $(function() {
        console.log(location.pathname);
        const pathname = String(location.pathname.split("/").splice(-1));
        const links = {
            "1": {
                "url": "https://webpages.charlotte.edu/hgayhart/appShowcase/HLGAppDownload.html",
                "text": "Mobile Apps",
                "alt": "Mobile Apps"
            },
            "2": {
                "url": "https://webpages.charlotte.edu/hgayhart/itis3135/stuff/Crappy Webpage( ͡° ͜ʖ ͡°).htm",
                "text": "Crappy Website",
                "alt": "Poorly made website"
            },
            "3": {
                "url": "https://webpages.charlotte.edu/hgayhart/itis3135/website_Evaluations.html",
                "text": "Website Evaluation",
                "alt": "Website to evaluate"
            }
        };

        const linkSeperator = " | ";
        let htmlString = "";

        for(var id in links) {
            if (pathname === links[id]['url']) {
            htmlString += links[id]['text'];
        } else {
            htmlString += '<a href="' + links[id]['url'] + '">' + links[id]['text'] + '</a>';
        }
        if (Number(id) < Object.keys(links).length) {
            htmlString += linkSeperator;
        }
    }
    $('#siteLinks2').html(htmlString);
});

//To Implement on each page, follow the instructions below:
//
//1.  Within the Head, below Title, add the code below:
//        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
//  
//1.  Within the header, above the Title element, replace the navbar with:
//        <nav id="siteLinks">Nav Links Here:</nav>
//        <br>
//        <nav id="siteLinks2">Nav Links Here:</nav>
//
//2.  Replace Validation links with the code below:
//        <p>Validation Links:    
//          <a href="https://validator.w3.org/check?uri=referer" id="validation_link_html">W3 HTML</a> | 
//          <a href="https://jigsaw.w3.org/css-validator/check/referer" id="validation_link_css">W3 CSS</a>
//        </p>
//
//3.  Below </footer>, but above </body> tags, add: 
//        <script src="scripts/default.js"></script>