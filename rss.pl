#!/usr/bin/env perl

print <<EOF;
<?xml version="1.0" encoding="utf-8" ?>
<rdf:RDF
  xmlns="http://purl.org/rss/1.0/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xml:lang="ja">

<channel rdf:about="">
   <title></title>
   <link></link>
   <description></description>
 <items>
 <rdf:Sec>
   <rdf:li rdf:resource="" />
   <rdf:li rdf:resource="" />
 </rdf:Seq>
 </items>
</channel>

<item rdf:about="" />
  <title></title>
  <description></description>
</item>
<item rdf:about="" />
  <title></title>
  <link></link>
  <description></description>
</item>
</rdf:RDF>


EOF
