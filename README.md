jenkins-rsa-test
================
Test plugin to illustrate NoSuchMethodError with newer bouncy-castle jar with latest Jenkins versions.

Steps to Reproduce
----------------
* Build and install the plugin from this repository
* Create a new Jenkins free-style Job of this repository
* Add build step for Read RSA private key
* Run build -- observe failure with stack trace

Stack trace
----------------
    ERROR: org.bouncycastle.asn1.ASN1InputStream.readObject()Lorg/bouncycastle/asn1/DERObject; (Java::JavaLang::NoSuchMethodError)
    org.jruby.ext.openssl.impl.PKey.readPrivateKey(PKey.java:70)
    org.jruby.ext.openssl.x509store.PEMInputOutput.readKeyPair(PEMInputOutput.java:1042)
    org.jruby.ext.openssl.x509store.PEMInputOutput.readPrivateKey(PEMInputOutput.java:285)
    org.jruby.ext.openssl.PKeyRSA.initialize(PKeyRSA.java:214)
    org.jruby.ext.openssl.PKeyRSA$i$0$0$initialize.call(PKeyRSA$i$0$0$initialize.gen:65535)

