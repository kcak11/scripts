/*
 * Open the navigation outline in a new tab in Chrome
 * then run this script from dev-toolbar
 * */
(function() {
    var plinks = document.querySelectorAll("[if=\"options.properties\"]");
    for (var i = 0; i < plinks.length; i++) {
        (function(p) {
            setTimeout(function() {
                try {
                    var href = p.getAttribute("href");
                    var ifr = document.createElement("iframe");
                    ifr.style.display = "none";
                    document.body.appendChild(ifr);
                    ifr.src = href;
                    ifr.onload = function() {
                        var d = ifr.contentWindow.document;
                        var propForm = d.querySelector("form[action*=propertiesView]");
                        if (propForm) {
                            var linkText = propForm.querySelector("ul[if=\"subject.content.cards.hyperlinks\"] a span");
                            if (linkText) {
                                var nameField = propForm.querySelector("[name=\"content[displayName]\"]");
                                if (nameField && nameField.value !== linkText.innerHTML) {
                                    nameField.value = linkText.innerHTML;
                                    propForm.submit();
                                }
                            }
                        }
                    };
                } catch (exjs) {}
            }, (i * 500));
        }(plinks[i]), i);
    }
}());
