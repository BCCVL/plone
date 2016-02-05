Plone
=====

A simple Zope server with enbedded ZODB and Plone installed.

The server will listen on port 8080.

Data storage
============

Data is stored in /var/opt/zope .

Build
-----

.. code-block:: Shell

  docker build --rm=true -t hub.bccvl.org.au/plone/plone:4.3.7 .

Publish
-------

.. code-block:: Shell

  docker push hub.bccvl.org.au/plone/plone:4.3.7
