#!/usr/bin/env nu

open ./obtainium.json |
    update additionalSettings { |c| $c.additionalSettings |
    to json -r } | to json -r | url encode |
    each {|s| "https://apps.obtainium.imranr.dev/redirect.html?r=obtainium://app/" ++ $s }
