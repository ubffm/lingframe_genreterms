# Lingframe Genre Terms
This is a selection of genre terms which are intended to be used as objects of `bf:genreForm` properties.
Its main application is the use in the [Lin|gu|is|tik portal](https://linguistik.de) data model.

It includes links to several other vocabularies and thesauri to establish interoperability:
* [Marc Genre/Form Terms](https://id.loc.gov/vocabulary/marcgt.html)
* [META-SHARE Ontology](http://www.meta-share.org/ontologies/meta-share/meta-share-ontology.owl/documentation/index-en.html)
* [GND Subject Headings](https://d-nb.info/standards/elementset/gnd); see also: [GND Form Terms (PDF; german)](https://wiki.dnb.de/download/attachments/106042227/AH-007.pdf)
* [BLL Ontology](https://data.linguistik.de/bll/bll-ontology)

The current version is a work in progress.

# Build requirements
Install [skosify](https://github.com/NatLibFi/Skosify):

```
pip install skosify
```

# Build
To build distribution-ready versions of the vocabulary, run `make`.

## Licence

All parts of this project are copyrighted by the University Library JCS, Frankfurt a. M. The code is made available under the Mozilla Public License 2.0.
The data is licensed under a Creative Commons Attribution 4.0 License.

## Acknowledgement  
This is a project created and maintained by the [Specialised Information Service for Linguistics](https://www.linguistik.de/en/)
at the [University Library J. C. Senckenberg](https://www.ub.uni-frankfurt.de/) and funded by the German Research Foundation (DFG; project identifier [326024153](https://gepris.dfg.de/gepris/projekt/326024153?language=en)).
