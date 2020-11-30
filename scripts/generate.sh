#!/bin/bash

FILE1="./generated/proxy.xml"
FILE2="./generated/policy.xml"

/bin/cat <<EOM >$FILE1
<proxy>
  <head>
    <meta>Some general info</meta>
  </head>
  <endpoints>
    <endpoint>
      <path>/entitlements</path>
      <policy>mypolicy</policy>
      <method>GET</method>
    </endpoint>
    <endpoint>
      <path>/entitlements</path>
      <policy>custom_policy</policy>
      <method>POST</method>
    </endpoint>
    <endpoint>
      <path>/subscriptions</path>
      <policy>other_policy</policy>
      <method>GET</method>
    </endpoint>
    <endpoint>
      <path>/invoices</path>
      <policy>cccc</policy>
      <method>GET</method>
    </endpoint>
  </endpoints>
</proxy>
EOM

/bin/cat <<EOM >$FILE2
<policy>
  <head>
    <name>oauth</name>
    <meta>Policy</meta>
  </head>
  <definition>
    <invoke>Some Script</invoke>
  </definition>
</policy>
EOM


