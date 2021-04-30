---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: title.jpg
  background-color: Red


# lexical order

widget1:
  title: "Cryptography"
#  url: "http://www.cse.chalmers.se/~aikmitr/Projects.html"
  url: "../"
  image: 'lock.jpg'
  text: '<ul>
  <li>Homomorphic Encryption</li>
  <li>Multi-Key Homomorphic Signature and MACs</li>
  <li>Anonymous (Server-Aided Verification of) Signatures</li>
  </ul>'


widget2:
  title: "Secure Software Engineering"
#  url: 'http://www.scandariato.org'
  url: "../"
  image: 'threat.jpg'
  text: '</ul>
  <li>Security and Privacy by design</li>
  <li>Empirical methods for security</li>
  <ul>'

widget3:
  title: "Network Security"
#  url: 'netsec'
  url: "../"
  video: '<iframe src="https://player.vimeo.com/video/56874383" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'
  text: '<ul>
  <li>Firewalls</li>
  <li>Security protocols (SSL, SSH and IPsec)</li>
  </ul>'

widget4:
  title: "Privacy"
#  url: 'privacy'
  url: "../"
  image: 'privacy.jpg'
  text: '<ul>
  <li>Differential Privacy </li>
  <li>Social Network Privacy</li>
  <li>Location Privacy</li>
  </ul>'

widget6:
  title: "Software Security"
#  url: 'prolangsec'
  url: "../"
  video: '<iframe src="https://player.vimeo.com/video/82206652" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'
  text: '<ul>
  <li>Web Security</li>
  <li>Security Foundations</li>
  </ul>'


widget5:
  title: "Our two Campuses"
#  url: "campus"
  url: "../"
  video: '<iframe src="https://player.vimeo.com/video/171066926" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'
  text: 'Chalmers has two large campuses in Gothenburg, campus Johanneberg and Lindholmen.'
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---
