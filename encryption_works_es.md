# El Cifrado Funciona: Cómo porteger tu privacidad en la era de Vigilancia de la NSA

> *El cifrado funciona. Los sistemas de cifrado fuertes e implementados de forma apropiada son una de las pocas cosas en que te puedes confiar. Desafortunadamente, la seguridad de punto final es tan terriblemente débil que la NSA frecuentemente encuentra formas de evadirla.*
> 
> — Edward Snowden, respondiendo preguntas en vivo el [sitio web del Guardian](http://www.guardian.co.uk/world/2013/jun/17/edward-snowden-nsa-files-whistleblower)

La NSA es la agencia de espionaje más grande y mejor financiada que el mundo haya visto. Ellos gastan miles y miles de millones de dólares cada año haciendo todo lo que pueden para recolectar las comunicaciones digitales de la mayoría de los seres humanos en este planeta que tienen acceso a la Internet y a la red de telefonía. Y como muestran reportes recientes del Guardian y el Washington Post, ni siquiera las comunicaciones domésticas están a salvo de su red.

Defenderte tú mismo de la NSA, o de cualquier otra agencia gubernamental de espionaje, no es simple, y no es algo que pueda ser solucionado simplemente descargando una app. Pero gracias al trabajo dedicado de criptógrafos civiles y a las comunidades de Software Libre y Abierto, todavía es posible tener privacidad en la Internet, y el software para lograrlo está disponible de forma gratuita para todo el mundo. Esto es especialmente importante para periodistas que se comunican con sus fuentes en línea.

## Modelo de Amenaza

La NSA es un adversario poderoso. Si tú eres su objetivo directo, tendrás que hacer un gran esfuerzo para comunicarte de forma privada, e incluso si no lo eres, miles de millones de usuarios de Internet también caen en su red de espionaje.

Aunque las herramientas y consejos en este documento están enfocados en proteger tu privacidad de los métodos de recolección de la NSA, los mismos consejos pueden ser aplicados para mejorar tu seguridad digital contra cualquier adversario. Es importante recordar que otros gobiernos, incluyendo China y Rusia, gastan inmensas cantidades de dinero en sus propios equipos de vigilancia de alta tecnología y son conocidos por enfocarse específicamente en los periodistas y sus fuentes. En los Estados Unidos, una mala seguridad digital puede costarle a los delatores su libertad, pero en otros países puede costarle la vida tanto a periodistas como a sus fuentes. Un [ejemplo reciente de Siria](http://www.cjr.org/feature/the_spy_who_came_in_from_the_c.php?page=all) ilustra cómo la seguridad digital descuidada puede tener trágicos resultados.

Pero cambiar algunas prácticas digitales básicas puede proporcionarte muchísima privacidad, incluso si no te mantiene seguro contra ataques gubernamentales específicos. Este documento explora métodos que puedes utilizar en ambos casos.

## Cripto-Sistemas 

> *Descubrimos algo. Nuestra única esperanza contra la dominación total. Una esperanza que con coraje, entendimiento y solidaridad podremos utilizar para resistir. Una extraña propiedad del universo físico en el que vivimos.*
> 
> *El universo cree en el cifrado.*
> 
> *Es más facil cifrar información que descifrarla.*
> 
> — Julian Assange, en la introducción de Cypherpunks: Libertad y el Futuro de la Internet

El cifrado es el proceso de tomar un mensaje en texto claro y una llave generada de forma aleatoria y hacer operaciones matemáticas con los dos hasta que todo lo que quede sea un versión del mensaje transformada en texto cifrado. Descifrar es tomar el texto cifrado y la llave correcta y hacer más operaciones matemáticas hasta que el texto claro sea recuperado. Este campo es llamado criptografía, o cripto para acortar. Un cripto-algoritmo, qué operaciones maemáticas hacer y cómo hacerlas, es llamado un cifrador. 

Para cifrar algo necesitas la llave correcta, y también necesitas la llave correcta para descifrarlo. Si el cripto-sofware está implementado apropiadamente, si la matemática es correcta, y si las llaves son seguras, todo el poder de computación de la tierra no sería suficiente para romper el cifrado. 

Construimos cripto-sistemas que dependen de probmeas matemáticos que creemos que son difíciles, tan difíciles como factorizar números grandes. A menos que existan avances matemáticos que hagan estos problemas más fáciles—y la NSA los esté manteniendo en secreto del resto del mundo—romper cripto-sistemas que se basan en ellos para su seguridad no es factible. 

El diseño de cripto-sistemas y cifradores debe ser completamente público. La única forma de asegurarse de que el cifrador no tenga un fallo crítico es publicar cómo funciona, para tener muchos ojos escudriñándolo en detalle, y dejarlo que soporte ataques del mundo real en un ambiente hostil para resolver los bugs. El funcionamiento interno de la  mayoría de cripto-sistemas que utilizamos a diario, como [HTTPS](https://es.wikipedia.org/wiki/https), la tecnología que hace posible que ingresemos de forma segura los números de tarjetas de crédito y contraseñas en los formularios de páginas web, es completamente pública. Incluso un atacante que conozca hasta el detalle más mínimo acerca de cómo funciona el crifrado debería fallar al tratar de romper el cifrado si no tiene la llave. La Criptografía que es propietaria, y su código interno es secreto, no puede ser considerada como segura. 

Aquí hay una pregunta importante para hacerse cuando se evalúe si un servicio o aplicaión que utiliza cifrado es segura: ¿Es posible que el mismo proveedor pueda evadir el cifrado? Si es así, no puedes confiar en la seguridad del servicio. Muchos servicios como [Skype](http://arstechnica.com/security/2013/05/think-your-skype-messages-get-end-to-end-encryption-think-again/) y [Hushmail](http://www.wired.com/threatlevel/2007/11/hushmail-to-war/) prometen cifrado "de extremo a extremo", pero frecuentemente esto también quiere decir que los mismos proveedores del servicio tienen las llaves para descifrar el producto. El verdadero cifrado de extremo a extremo significa que el proveedor del servicio no puede mirar tus comunicaciones incluso si lo quisiera.

Otro dato importante para saber acerca del cifrado es que se trata de mucho más que proteger la privacidad de las comunicaciones. Puede ser usado para "firmar digitalmente" mensajes de tal forma que se pruebe que el mensaje fue originado por la persona que tú esperas que lo haya hecho. También puede ser utilizado para construir monedas digitales como Bitcoin, y para construir redes de anonimato como Tor.

El cifrado también puede ser usado para evitar que la gente instale aplicaciones iPhone que no provienen del App Store, para evitar que la gente grabe películas directamente desde Netflix, y para evitar que la gente instale Linux en tabletas Windows 8. Y también puede ser utilizado para evitar que atacantes [Man-in-the-middle](https://es.wikipedia.org/wiki/Ataque_Man-in-the-middle) (MiTM) inserten malware en lo que podrían haber sido actualizaciones de software legítimas.

En resumen, el cifrado comprende toda una multitud de usos, pero aquí estamos enfocados en cómo lo podemos usar para comunicarnos de forma segura y privada.

## Software en el que puedes confiar

Cuando Snowden utiliza el término "seguridad de punto final" él se refiere a la seguridad de los dispositivos en cualquier extremo de la conversación que están haciedo el cifrado y el descifrado, en lugar de la seguridad del mensaje cuando éste está en tránsito. Si envías un mensaje cifrado a un amigo pero tienes un malware en tu dispositivo que graba el mensaje cuando lo escribes, así como la contraseña que está protegiendo tus llaves de cifrado, tu cifrado no valdrá mucho.

Desde que los miembros de junta de la Freedom of the Press Foundation Glenn Greenwald y Laura Poitras revelaron las historias de la red de espionaje de la NSA, mucha más información acerca de agencias de espionaje estadounidenses se ha hecho pública. Específicamenente, Bloomberg escribió acerca de [programas de intercambio voluntario de información entre compañías y agencias de espionaje estadounidenses] (http://www.bloomberg.com/news/2013-06-14/u-s-agencies-said-to-swap-data-with-thousands-of-firms.html).  

Hasta ahora la revelación más impactante acerca de esos programas de intercambios de información es que Microsoft tiene una política de dar información acerca de vulnerabilidades en su software al gobierno estadounidense antes de que se lancen al público las actualizaciones de seguridad. El artículo dice:

> Microsoft Corp. (MSFT), la compañía de software más grande del mundo, provee a agencias de inteligencia con información acerca de fallos en su popular software antes de que se lance públicamente una solución, de acuerdo con dos personas familiares con el proceso. Esa información puede ser utilizada para proteger los computadores del gobierno y para acceder a los computadores de terroristas o militares enemigos. 

Esto quiere decir que es como si la NSA haya estado manipulando las llaves de cualquier computador que corra Windows, Office, Skype, u otro software Microsoft. Si estás corriendo este software en tu computaor, es como si, con el suficiente esfuerzo, la NSA pudiera comprometer tu computador, y así tus comunicaciones cifradas, si te convirtieras en un objetivo. 

También hemos aprendido del [New York Times](http://www.nytimes.com/2013/06/20/technology/silicon-valley-and-spy-agency-bound-by-strengthening-web.html?pagewanted=all&_r=1&) que Skype, software que por fuera de la comunidad de la seguridad desde hace mucho ha tenido una reputación de ser una forma segura de comunicarse, ha estado proporcionando conversaciones privadas al gobierno estadounidense por los últimos cinco años.

> Skype, el servicio de llamadas basado en Internet, empezó su propio programa secreto, Proyecto Chess, para explorar los asuntos técnicos y legales relacionados con hacer las llamadas de Skype fácilmente disponibles a las agencias de inteligencia y a los oficiales de lo cuerpos policiales, de acuerdo con personas instruidas en el programa que solicitaron no ser nombradas para evitar problemas con las agencias de inteligencia.
>
> El Proyecto Chess, que nunca ha sido revelado, era pequeño, limitado a menos de una docena de personas en Skype, y fue desarrollado mientras la compañía ocasionalmente tenía polémicas conversaciones con el gobierno acerca de asuntos legales, dijo una de las personas instruída en el proyecto. El proyecto empezó aproximadamente hace cinco años, antes de que la mayoría de la compañía fuera vendida por su padre, eBay, a inversores externos en el 2009. Microsoft adquirió Skype en un acuerdo de $8.500 millones de dólares que fue cerrado en octubre de 2011.
> 
> Un ejecutivo de Skype negó el año pasado en un post de un blog que cambios recientes en la forma que opera Skype hubieran sido hechos a petición de Microsoft para hacerle más fácil el espionaje a los cuerpos policiales. Parece, sin embargo, que Skype supo como cooperar con la comunidad de inteligencia antes de que Microsoft adquiriera la compañía, de acuerdo con documentos filtrados por Edward J. Snowden, un antiguo contratista de la N.S.A. Uno de los documentos acerca del programa Prism hecho público por el señor Snowden dice que Skype se unió a Prism en Feb. 6, 2011. 

El software propietario, así como mucho de lo que es lanzado por Microsoft, Apple, y Google, tiene otro fallo. Es mucho más difícil para los usuarios verificar de forma independiente que no existan puertas traseras solicitadas de forma clandestina por la vigilancia estatal. Aunque reportes recientes muestran que muchas compañías manejan una cantidad desconocida de información como respuesta a peticiones de FISA, no se ha revelado que ninguna tenga puertas traseras en sus sistemas. 

Hay otro software que es más confiable en este aspecto. [El Software Libre y Abierto](https://www.gnu.org/philosophy/free-sw.es.html) no siempre es amigable con el usuario y tampoco es siempre seguro. Sin embargo cuando es desarrollado de forma abierta, con rastreadores de fallos abiertos, estructuras de gobierno abierto, y código fuente abierto, es mucho más difícil que estos proyectos tengan una política que engañe a sus usuarios como la tiene Microsoft.


GNU/Linux es un sistema operativo que está compuesto totalmente de software libre y abierto. Los ejemplos de distribuciones GNU/Linux incluyen [Ubuntu](http://www.ubuntu.com/), [Debian](http://www.debian.org/), y [Fedora Core](https://fedoraproject.org/). Esta es el software libre más popular como alternativa a Windows y Mac OS X.

Aunque los proyectos de software libre aún pueden incluir código malicioso (ver el [Underhanded C Contest](http://underhanded.xcott.com/)), la persona que escriba el código necesita esconderlo hábilmente y esperar que ninguno de los otros desarrolladores, o mantenedores de paquetes GNU/Linux que preparan y compilan el código fuente de proyectos para incluirlos en sus distribuciones, lo noten.

En los 90s, cuando la criptografía civil se estaba volviendo popular y el gobierno estadounidense estaba haciendo [todo](https://en.wikipedia.org/wiki/Phil_Zimmermann#Criminal_investigation) [lo que podía](https://en.wikipedia.org/wiki/Clipper_chip) para evitarlo, nació el movimiento "cypherpunk". Muchas piezas de software hechas para brindarle cifrado a la gente surgieron de ese movimiento.   
> *Los Cypherpunks escribims código. Sabemos que alguien tiene que escribir el software para defender la privacidad, y como no podemos tener privacidad a menos que todos la tengamos, nosotros vamos a escribirlo. Nosotros publicamos nuestro código para que nuestros compañeros Cypherpunks puedan practicar y jugar con él. Nuestro código es libre para uso de todos, a nivel mundial. No nos importa mucho si tú no apruebas el software que escribimos. Sabemos que el software no puede ser destruido y que un sistema ampliamente disperso no puede ser echado abajo.*
> 
> — Eric Hughes, en su Manifiesto Cypherpunk de 1993

Ese código, que es abierto y público para que compañeros cypherpunks puedan practicar y jugar con él, que cualquiera en el mundo puede usar libremente, es la base del software y los protocolos en los que podemos confiar: TLS (el cifrado que utiliza HTTPS), LUKS ([cifrado de disco](https://en.wikipedia.org/wiki/Disk_encryption) incorporado en GNU/Linux), OpenPGP, Off-the-Record, y Tor. 

El [Colectivo Tactical Technology](https://tacticaltech.org/) ha construído una [excelente guía de software de seguridad de código abierto en el que se puede confiar](https://tacticaltech.org/security-box) para mantener tus comunicaciones privadas de la vigilancia. Es importante recordar que sólo usando este software, e incluso usándolo perfectamente, no se puede garantizar la seguridad de tu criptografía. Por ejemplo, no tenemos idea si Apple ha entregado vulnerabilidades [día cero](https://es.wikipedia.org/wiki/Ataque_de_d%C3%ADa_cero) a la NSA para iOS como se reportó que Microsoft lo ha hecho. ChatSecure, que te permite tener conversaciones de chat cifradas en dispositivos iOS, es tan segura como el sistema operativo en el que está corriendo.

Es importante recordar que sólo porque uses software libre no significa que no puedas ser hackeado. La gente encuentra exploits de día cero para software libre todo el tiempo, y algunas veces los venden a gobiernos y otros atacantes maliciosos. Los usuarios de software libre aún descargan adjuntos maliciosos en su correo, y aún frecuentemente tienen servicios mal configurados y fácilmente explotables en sus computadores. E incluso peor, el malware frecuentemente es muy bueno escondiéndose. Si un usuario de software libre infecta malware en su computador, este puede permanecer allí hasta que el usuario formatee su disco duro.

Tails, que es una distribución GNU/Linux live DVD y live USB que discutiré en detalle abajo, soluciona muchos de estos problemas.

## Oculta tu ubicación con Tor

Tor es un servicio de software que te permite utilizar la Internet mientras esconde tu dirección IP, que es, en general, una representación bastante precisa de tu ubicación. La red [Tor](https://www.torproject.org) está formada por más de 3600 servidores voluntarios llamados nodos. Cuando alguien usa la red Tor para visitar un sitio web su conexión rebota en tres de estos nodos (un circuito) antes de que finalmente salga a la Internet normal. Cualquiera que esté interceptando tráfico pensará que tu ubicación es el nodo final del cual sale tu tráfico.

Es importante recordar que sólo porque tu conexión a Internet pueda ser anónima eso no la hace mágicamente segura. EFF ha hecho una excelente [visualización de cómo Tor y HTTPS pueden trabajar juntos para proteger tu privacidad](https://www.eff.org/pages/tor-and-https).

Como todo buen software de criptografía, Tor es completamente software libre, con un [rastreador de bugs](https://trac.torproject.org/projects/tor) abierto, [listas de correo](https://www.torproject.org/docs/documentation#MailingLists), y [código fuente](https://gitweb.torproject.org/tor.git?a=tree;hb=HEAD).

La documentación de Tails, la distribución live GNU/Linux que hace que todo el tráfico de red del usuario se envíe a través de la red Tor, [dice esto](https://tails.boum.org/doc/about/warning/index.en.html#index7h1) acerca de adversarios globales:
> Un adversario global pasivo será una persona o una entidad capaz de monitorear al mismo tiempo el tráfico entre todos los computadores en una red. Estudiando, por ejemplo, los patrones de tiempo y volumen de diferentes comunicaciones a través de la red, podría ser estadísticamente posible identificar circuitos Tor y por lo tanto relacionar usuarios Tor y servidores destino.

Todavía no sabemos si la NSA o GCHQ se consideran adversarios globales o no, pero sabemos que monitorean una gran parte de la Internet. Es muy pronto para saber con seguridad con qué frecuencia estas agencias de inteligencia pueden romper la el anonimato de la red Tor.

Incluso si pudiera, usar Tor todavía nos da muchas ventajas. Hace su trabajo mucho más difícil, y dejamos mucho menos datos de identificación en los servidores a los que nos conectamos a través de la red Tor. Hace mucho más difícil ser una víctima de un ataque MITM en nuestra red local o a nivel del ISP. E incluso si algunos circuitos Tor son derrotados por un adversario global, si suficiente gente está enrutando su tráfico a través del mismo nodo Tor al mismo tiempo, podría ser difícil para el adversario decir qué tráfico pertenece a qué circuito.

La forma más fácil de empezar a usar Tor es descargar e instalar el [Tor Browser Bundle](https://www.torproject.org/download/download-easy.html.en).

![](https://raw.github.com/micahflee/encryption-works/master/images/torbrowser.png)

Cuando Snowden [estaba respondiendo preguntas en el sitio web de Guardian](http://www.guardian.co.uk/world/2013/jun/17/edward-snowden-nsa-files-whistleblower) desde una "conexión segura a Internet", él probablemente estaba enrutando su tráfico a través de la red Tor. Él podría haber estado usando también un [bridge](https://bridges.torproject.org/) para conectarse a la red Tor para hacer el hecho de que estaba usando Tor desde su dirección IP menos obvio a espías.

## Chat Off-the-Record (OTR)

[Off-the-Record](http://www.cypherpunks.ca/otr/) (OTR) es una capa de cifrado que puede ser agregada a cualquier sistema de chat de mensajería instantánea existente, siempre y cuando te puedas conectar a ese sistema de chat usando un cliente chat que soporte OTR, como [Pidgin](https://pidgin.im/) o [Adium](http://adium.im/). Con OTR es posible tener conversaciones seguras, cifradas de extremo a extremo sobre servicios como los chat de Google Talk y Facebook sin que Google o Facebook nunca tengan acceso a los contenidos de las conversaciones. Nota: esto es diferente de la opción "off-the-record" en Google, que **no** es segura. Y recuerda: mientras que la conexión HTTPS de Google y Facebook es muy valiosa para la protección de tus mensajes mientras están en tránsito, ellos todavía poseen las llaves de tus conversaciones así que pueden entregárselas a las autoridades.
OTR es utilizado para dos cosas: **cifrar los contenidos** de conversaciones de mensajería instantánea en tiempo real y **verificar la identidad** de las personas con las que chateas. La verificación de identidad es extremadamente importante y es algo que muchos usuarios OTR olvidan hacer. Mintras que OTR es mucho más amigable con el usuario que otras formas de cifrado de clave pública, si quieres usarlo de forma segura aún tienes que entender cómo funciona y qué ataques en su contra son posibles.

### Proveedores de Servicio y Jabber

Usar OTR sólo cifra el contenido de tu conversación de chat pero no los metadatos relacionados con ellos. Estos metadatos incluyen con quién hablas y cuándo o qué tan frecuente lo haces. Por esta razón recomiendo usar un servicio del que no se sepa que colabora con agencias de inteligencia. Mientras que esto no protegerá necesariamente tus metadatos al menos tienes la oportunidad de mantenerlos privados.

También recomiendo utilizar un servicio XMPP (también conocido como Jabber). Como el correo electrónico, Jabber es protocolo federado y abierto. Los usuarios del servicio Jabber de [riseup.net](https://www.riseup.net/en/chat) pueden chatear con usuarios del servicio de [jabber.ccc.de](https://web.jabber.ccc.de/) así como con los del servicio de [jabber.org](http://www.jabber.org/).

### Clientes OTR

Para usar OTR necesitarás descargar software. Si usas Windows puedes descargar e instalar [Pidgin](https://pidgin.im/) y por separado el [plugin OTR](http://www.cypherpunks.ca/otr/). Si usas GNU/Linux puedes instalar los paquetes pidgin y pidgin-otr. Puedes leer la [documentación sobre cómo configurar tus cuentas Pidgin con OTR](https://securityinabox.org/es/usar_pidgin). Si utilizas Mac OS X puedes descargar e instalar [Adium](http://adium.im/), que es un cliente software libre que incluye soporte OTR. Puedes leer la [documentación oficial](http://adium.im/help/pgs/AdvancedFeatures-OTREncryption.html) acerca de cómo configurar Adium con cifrado OTR.

También están disponibles clientes Jabber y OTR para Android, llamado [Gibberbot](https://guardianproject.info/apps/gibber/), y para iOS, llamado [ChatSecure](http://chrisballinger.info/apps/chatsecure/). 

### Tu Llave

Cuando comienzas a utiliar OTR, tu cliente chat genera una llave de cifrado y la almacena en un archivo en tu carpeta de usuario en el disco duro. Si tu computador o smartphone se pierde, es robado, o infectado con malware, es posible que tu llave OTR puede ser comprometida. Si esto sucede, será posible que un atacante con control sobre tu servidor Jabber pueda montar un ataque MITM contra ti mientras estás chateando con personas que han verificado tu identidad previamente.

### Sesiones

Si quieres usar OTR para hablar en privado con tus amigos, tus amigos también tienen que estar usándolo. Una sesión cifrada entre dos personas requiere dos llaves de cifrado. Por ejemplo, si tú y tu amigo están ambos logueados en el chat de Facebook usando Adium o Pidgin y los dos tienen configurado OTR, pueden chatear en privado. Sin embargo si tú estás logueado en IM utilizando Adium o Pidgin y tu amigo está chateando directamente desde facebook.com en un navegador web, no puedes tener una conversación cifrada.

Si quieres usar los servicios de Facebook o Google para chatear con tus amigos, recomiendo deshabilitar el chat de la interfaz web de estos servicios y utilizar solamente Adium o Pidgin para conectarse, y animar a todos tus amigos a que hagan lo mismo. Aquí hay instrucciones sobre cómo hacerlo para [Facebook](https://www.facebook.com/help/215888465102253/) y [Google](https://support.google.com/chat/bin/answer.py?hl=en&answer=161823).

Cuando inicias una sesión OTR cifreada, tu software cliente te dirá algo como esto:

    Intentando iniciar una conversación privada con nombredeusuario@serviciojabber...
	Conversación no verificada con nombredeusuario@serviciojabber/ClienteChat iniciada.

Si ya has verificado el fingerprint OTR de la persona con la que estás hablando (más acerca de esto abajo) tu sesión se verá como esto:

    Intentando iniciar una conversación privada con nombredeusuario@serviciojabber...
    Conversación privada con nombredeusuario@serviciojabber/ClienteChat iniciada.

Cuando inicias una sesión OTR, tu software OTR y el software OTR de tu amigo envían una serie de mensajes en uno y otro sentido para ponerse de acuerdo con una nueva llave de sesión. Esta llave de cifrado temporal, que sólo es conocida por sus clientes IM y nunca es enviada a través de Internet, luego es usada para cifrar y descifrar mensajes. Cuando la sesión es finalizada ambos clientes olvidan la llave. Si empiezas a chatear con la misma persona después, sus clientes generan una nueva llave de sesión. 

De esta forma, incluso si un espía está registrando todas tus conversaciones cifradas con OTR—algo que la [NSA cree que tiene legalmente permitido hacer](https://www.eff.org/deeplinks/2013/06/depth-review-new-nsa-documents-expose-how-americans-can-be-spied-without-warrant), incluso si eres un ciudadano estadounidense y ellos no tengan ninguna orden judicial o causa probable—y luego obtiene tu llave OTR, no podría usarla para volver atrás y descifrar tus conversaciones antiguas.

Esta propiedad es llamada forward secrecy, y es una característica que tiene OTR y no PGP. Si tu llave secreta PGP (más de esto abajo) es comprometida, y el atacante tiene acceso a todos los mensajes cifrados que has recibido, él puede regresar y descifrarlos todos.

Lee más acerca de cómo funciona la forward secrecy, y por qué todas las compañías grandes de Internet debería utilizarlo en sus sitios web, [aquí](https://www.eff.org/deeplinks/2011/11/long-term-privacy-forward-secrecy). La buena noticia es que Google [ya ha adoptado forward secrecy](https://www.eff.org/deeplinks/2011/11/long-term-privacy-forward-secrecy), y Facebook [la implementará pronto](https://www.facebook.com/pages/Perfect-forward-secrecy/101895216519655) también.

### Verificación de la huella digital OTR

Cuando empiezas una nueva sesión OTR con alguien, tu software de mensajería recibe la huella digital de su llave de cifrado, y tu software OTR recuerda su huella digital. Mientras que esta persona use la misma llave de cifrado cuando habla contigo, presuntamente porque está usando el mismo dispositivo de forma consistente, ella tendrá la misma huella digital. Si su huella digital cambia entonces ella está usando una llave OTR diferente o ustedes dos son los objetivos de un ataque MITM.

Sin verificar las llaves no tienes forma de saber que no estás siendo víctima de un indetectado, exitoso ataque MITM.

**Incluso si la persona con la que estás hablando es definitivamente tu amiga real porque ella conoce cosas que sólo ella conocería, y estás usando cifrado OTR, un atacante aún podría estar leyendo tu conversación.** Esto es porque tú podrías de hecho estar teniendo una conversación con cifrado OTR con el atacante, quien en el mismo momento está teniendo por separado una conversación con cifrado OTR con tu amiga real y sólo está reenviando mensajes en un sentido y en otro. En lugar de la huella digital de tu amiga tu cliente debería estar viendo la huella digital del atacante. Todo lo que tú, como usuario, puedes ver es que la conversación está "Sin verificar". 

Las siguientes capturas de pantalla muestran las indicaciones visuales de Pidgin de verificación de huella digital. Si tienes la huella digital OTR verificada tu conversación es privada, y si no la tienes, tu conversación está cifrada pero podrías estar siendo víctima de un ataque. No puedes estar seguro sin verificarlo.

![](https://raw.github.com/micahflee/encryption-works/master/images/verified.png) ![](https://raw.github.com/micahflee/encryption-works/master/images/unverified.png)

Si le das click al enlace Sin verificar (en Adium es el ícono de un candado) puedes escoger "Autenticar amigo". El protoclo OTR soporta tres tipos de verificación: el protocolo del [socialista millonario](https://en.wikipedia.org/wiki/Socialist_millionaire), un [secreto compartido](https://en.wikipedia.org/wiki/Shared_secret), y la verificación manual de huella digital. Todos los clientes OTR soportan la verificación manual de huella digital, pero no todos los clientes soportan otros tipos de verificación. Cuando se tenga duda, se debe escoger la verificación manual de huella digital. 

![](https://raw.github.com/micahflee/encryption-works/master/images/fingerprints.png)

En la captura de pantalla de arriba, puedes ver las huellas digitales OTR para los dos usuarios en la sesión. La otra persona debe ver exactamente las mismas huellas digitales. Con el fin de estar seguro de que ambas partes están viendo las huellas digitales correctas los dos se deben encontrar en persona, o hablar por teléfono si puedes reconocer su voz, o encontrar algún otro método fuera-de-banda seguro para verificar las huellas digitales, algo así como enviar un correo firmado y cifrado con PGP.

Las huellas digitales OTR con 40 caracteres hexadecimales. Es estadísticamente imposible generar dos llaves OTR que tengan una misma huella digital, lo que es conocido como una colisión. Sin embargo es posible generar una llave OTR que no es una colisión pero que parece una al revisarla someramente. Por ejemplo, los primeros caracteres y los últimos pueden ser los mismos con diferentes caracteres en el medio. Por esta razón, es importante comparar cada uno de los 40 caracteres para asegurarse de que se tiene la llave OTR correcta.

Como generalmente estableces una nueva llave OTR cada vez que configuras un nuevo dispositivo (por ejemplo, si quieres usar la misma cuenta Jabber para chatear desde tu teléfono Android con Gibberbot como lo haces en tu computador Windows con Pidgin), frecuentemente terminas con múltiples llaves, y por lo tanto múltiples huellas digitales. Es importante repetir el paso de verificación en cada dispositivo con cada contacto con el que hables.

Es una práctica mucho mejor todavía usar OTR sin verificar huellas digitales que no usar OTR del todo. Un atacante que intenta un ataque MITM contra una sesión OTR corre el riesgo muy real de ser capturado, por lo que probablemente este ataque será usado cautelosamente.

### Registros 

Este es un fragmente de los [registros de chat](http://www.wired.com/threatlevel/2011/07/manning-lamo-logs), publicados por Wired, de una conversación entre Bradley Mannning y Adrian Lamo, quien lo llevó a las autoridades:

> (1:40:51 PM) bradass87 has not been authenticated yet. You should authenticate this buddy.
> 
> (1:40:51 PM) Unverified conversation with bradass87 started.
> 
> (1:41:12 PM) bradass87: hi
> 
> (1:44:04 PM) bradass87: how are you?
> 
> (1:47:01 PM) bradass87: im an army intelligence analyst, deployed to eastern baghdad, pending discharge for "adjustment disorder" in lieu of "gender identity disorder"
> 
> (1:56:24 PM) bradass87: im sure you're pretty busy...
> 
> (1:58:31 PM) bradass87: if you had unprecedented access to classified networks 14 hours a day 7 days a week for 8+ months, what would you do?
> 
> (1:58:31 PM) info@adrianlamo.com : Tired of being tired
> 
> (2:17:29 PM) bradass87: ?
> 
> (6:07:29 PM) info@adrianlamo.com: What's your MOS?

Como puedes ver por "Unverified conversation with bradass87 started," ellos estaban usando OTR para cifrar su conversación, aún así esta terminó siendo publicada en el sitio web de Wired y usada como evidencia en contra de Bradley Manning. Mientras que era posible que su conversación estuviera bajo un ataque MITM, esto era muy improbable. En lugar de esto los dos clientes OTR de Bradley Manning y Adrian Lamo estaban registrando una copia de su conversación en sus discos duros, sin cifrar.

Mientras que algunas veces puede ser útil mantener registros de conversaciones, esto también comprometer en gran manera tu privacidad. Si Pidgin y Adium no hubieran registrado las conversaciones OTR por defecto, es probable que estos registros de chat nunca se hubieran vuelto parte de la historia pública.

Con el lanzamiento de OTR 4.0 en septiembre de 2012, Pidgin dejó de registrar las conversaciones OTR por defecto. Adium todavía registra las conversaciones OTR por defecto así que debes desactivar el registro tú mismo de forma manual, lo cual es un bug de Adium. Como Adium es software libre con un rastreador de bugs abierto, puedes seguir y contribuir a las conversaciones acerca de la solución de este bug [aquí](https://trac.adium.im/ticket/15722) y [aquí](https://trac.adium.im/ticket/15729).

## Cifrado de correo PGP "Pretty Good Privacy" (Privacidad bastante buena) 

En 1991, Phil Zimmermann desarrolló un software de cifrado de correo llamado [Pretty Good Privacy](https://es.wikipedia.org/wiki/Pretty_Good_Privacy), o PGP, el cual fue planeado para que lo usaran los activistas de paz mientras coordinaban el movimiento anti-nuclear.

Hoy, PGP es una compañía que vende un programa de cifrado propietario del mismo nombre. [OpenPGP](http://openpgp.org/) es el protoclo abierto que define cómo funciona el cifrado PGP, y [GnuPG](http://www.gnupg.org/) (GPG para abreviar) es software libre, y es 100% compatible con la versión propietaria. GPG es mucho más popular que PGP hoy porque es gratis para que todo el mundo lo descargue, y los cypherpunks confían más en él porque es de código abierto. Los términos PGP y GPG frecuentemente son usados indistintamente.

Desafortunadamente, PGP notablemente difícil de usar, como lo demuestra [Greenwald explicando cómo no fue posible para él inicialmente hablar con Edward Snowden porque era muy difícil de configurar](http://www.huffingtonpost.com/2013/06/10/edward-snowden-glenn-greenwald_n_3416978.html?1370895818).

### Pares de llaves y llaveros

Como con OTR, cada persona que desee enviar o recibir correo cifrado necesita generar su propia llave PGP, que es en realidad un par de llaves. Los pares de llaves PGP están compuestos por la llave pública y la llave privada.

Si tú tienes la llave pública de alguien, puedes hacer dos cosas: **cifrar mensajes** que sólo pueden ser descifrados con su llave privada, y **verificar firmas** que fueron generadas con su llave privada. Es seguro darle tu llave pública a todo el que la quiera. Lo peor que alguien puede hacer con ella es cifrar mensajes que sólo tú puedes descifrar. 

Con tu llave privada puedes hacer dos cosas: **descifrar mensajes** que fueron cifrados utilizando tu llave pública, y **firmar mensajes digitalmente**. Es importante mantener tu llave privada en secreto. Un atacante con tu llave privada puede descifrar mensajes escritos sólo para tí, y puede escribir mensaje en nombre tuyo. Las llaves privadas están generalmente cifradas con una frase de contraseña, así que incluso si tu computador es comprometido y tu llave privada es robada, el atacante necesitará obtener tu frase de contraseña para poder tener acceso a ella. A diferencia de OTR, PGP no provee forward secrecy. Si tu llave PGP privada es comprometida y el atacante tiene copias de todo el historial de mensajes cifrados que has recibido, él puede volver atrás y retroactivamente descifrarlos todos.

Como necesitas las llaves públicas de otras personas para cifrar mensajes para ellos, el software PGP te permite manejar un llavero con tu llave privada, tu llave pública, y todas las llaves públicas de la gente con quien te comunicas.

Usar PGP para el cifrado de correo puede ser muy inconveniente. Por ejemplo, si configuras PGP en tu computador pero has recibido un correo cifrado en tu teléfono, no podrás descifrarlo para leerlo hasta que lo veas en tu computador.

Como OTR, cada llave PGP tiene una huella digital única. Puedes encontrar [una copia de mi llave pública aquí](https://pressfreedomfoundation.org/keys/micah.asc), y mi huella digital es 5C17 6163 61BD 9F92 422A C08B B4D2 5A1E 9999 9697. Si ves mi llave pública verás que es muy larga y sería difícil leerla en el teléfono. Una huella digital es una forma corta y más conveniente para representar únicamente a una llave. Con mi llave pública puedes cifrar mensajes que sólo yo puedo descifrar, siempre y cuando mi llave privada no haya sido comprometida. 

### Frases de contraseña

La seguridad de los cripto-sistemas frecuentemente dependen de la seguridad de una clave. Como las claves son fácilmente adivinadas por los computadores, los criptógrafos prefieren el término **frase de contraseña** para alentar a los usuarios a hacer sus contraseñas largas y seguras.

![](https://raw.github.com/micahflee/encryption-works/master/images/password_strength.png)

Comic cortesía de [XKCD](https://xkcd.com/936/)

Para consejos al escoger buenas frases de contraseña, lee la [sección de frases de contraseña](https://www.eff.org/wp/defending-privacy-us-border-guide-travelers-carrying-digital-devices#passphrase) del artículo de la EFF Defendiendo la Privacidad en la Frontera Estadounidense: Una Guía para Viajeros que Llevan Dispositivos Digitales, y también la [Página de Inicio de Frases de Contraseña Diceware](http://world.std.com/~reinhold/diceware.html).

Adicionalmente para proteger llaves PGP privadas, también necesitas escoger buenas frases de contraseña para cifrado de disco y [gestores de contraseñas](https://es.wikipedia.org/wiki/Gestor_de_contrase%C3%B1as). 

### Software

Para instalar GPG, los ususarios de Windows pueden descargar [Gpg4win](http://www.gpg4win.org/), y los usuarios de Mac OS X pueden descargar [GPGTools](https://gpgtools.org/). Si tú corres GNU/Linux ya deberías tener GPG instalado. GPG es un programa de línea de comandos, pero hay software que se conecta con clientes de correo que lo hacen mucho más fácil de usar. 

Tendrás que descargar un cliente de correo para usar PGP de forma correcta. Un cliente de correo es un programa en tu computador que abres para revisar tu correo, en lugar de usar tu navegador web. La configuración PGP más popular es el cliente [Thunderbird](https://www.mozilla.org/es-AR/thunderbird) con la extensión [Enigmail](http://enigmail.net/home/index.php). Thunderbird y Enigmail son software libre y corren en Windows, Mac y GNU/Linux.

Justo ahora PGP es muy difícil de utilizar de forma segura en un navegador web. Aunque existen algunas extensiones que pueden ayudar con esto, yo recomendaría seguir usando un cliente de correo de escritorio hasta que el campo de la criptografía en los navegadores madure. Es posible utilizar cifrado PGP con Gmail, pero la forma más fácil es configurar un cliente de correo como Thunderbird y manejar tu cuenta de Gmail a través de él.

### Cifrando, Descifrando y Firmas

Puedes enviar correos cifrados y firmarlos digitalmente usando la interfaz de usuario gráfica que proporciona Thunderbird y Enigmail. Aquí hay un ejemplo de un correo cifrado que me estoy enviando a mí mismo. Cuando di enviar, mi software tomó el cuerpo del mensaje y lo cifró utilizando mi llave pública, haciendo el contenido ilegible para espías, y de hecho para mi proveedor de correo también.

![](https://raw.github.com/micahflee/encryption-works/master/images/encrypt_sign.png)

Cuando abrí este correo se me solicitó escribir mi frase de contraseña de cifrado para descifrarlo. Como esta cifrado usando mi llave pública, la única forma en que podría descifrarlo es con mi llave privada. Y como mi llave privada está protegida con una frase de contraseña, tuve que ingresar mi frase de contraseña para descifrar temporalmente mi llave privada y poder usarla para descifrar el mensaje.

![](https://raw.github.com/micahflee/encryption-works/master/images/decrypt.png)

### PGP no es sólo para correo

Aunque PGP es usado frecuentemente para cifrar correo, nada te impide usarlo para cifrar cualquier cosa y publicarla usando cualguier medio. Puedes publicar mensajes cifrados con PGP en blogs, redes sociales y foros.

Kevin Poulsen [publicó un mensaje cifrado con PGP en el sitio web de Wired](http://www.wired.com/threatlevel/2013/06/signed-bda0df3c/) con el propósito de que Edward Snowden lo leyera. Como Wired tiene una copia de la llave pública real de Snowden, solo alguien que posea la llave privada de Snowden puede descifrar este mensaje. No sabemos cómo Wired obtuvo una copia de la llave pública de Snowden.

Aquí hay un menssaje que fue cifrado con mi llave pública. Sin tener acceso a mi llave privada asociada, la NSA no debería poder romper el cifrado. (NSA, avísenme si pueden hacerlo.)

    -----BEGIN PGP MESSAGE-----
    Version: GnuPG v1.4.12 (GNU/Linux)

    hQIMA86M3VXog5+ZAQ//Wep9ZiiCMSmLk/Pt54d2wQk07fjxI4c1rw+jfkKQAi4n
    6HzrX9YIbgTukuv/0Bjl+yp3qcm22n6B/mk+P/3Cbxo+bW3gsq5OLFNenQO3RMNM
    i9RC+qJ82sgPXX6i9V/KszNxAyfegbMseoW9FcFwViD14giBQwA7NDw3ICm89PTj
    y+YBMA50iRqdErmACz0fHfA/Ed5yu5cOVVa8DD12/upTzx7i0mmkAxwsKiktEaKQ
    vg8i1gvzqeymWYnckGony08eCCIZFc78CeuhODy0+MXyrnBRP9p++fcQE7/GspKo
    SbxVT3evwT2UkebezQT2+AL57NEnRsJzsgQM4R0sMgvZI7I6kfWKerhFMt3imSt1
    QGphXmKZPRvKqib59U57GsZU1/2CMIlYBVMTZIpYKRh6NgE8ityaa4gehJDl16xa
    pZ8z3DMNt3CRF8hqWmJNUfDwUvXBEk8d/8Lkh39/IFHbWqNJh6cgq3+CipXH5HjL
    iVh7tzGPfB6yn+RETzcZjesZHtz4hFudOxTMV0YnTIv0FGtfxsfEQe7ZVmmfqGNG
    glxE0EfbXt0psLXngFMneZYBJqXGFsK3r5bHjRm6wpC9EDAzXp+Tb+jQgs8t5eWV
    xiQdBpNZnjnGiIOASOxJrIRuzbTjo389683NfLvPRY8eX1iEw58ebjLvDhvDZ2jS
    pwGuWuJ/8QNZou1RfU5QL0M0SEe3ACm4wP5zfUGnW8o1vKY9rK5/9evIiA/DMAJ+
    gF20Y6WzGg4llG9qCAnBkc3GgC7K1zkXU5N1VD50Y0qLoNsKy6eengXvmiL5EkFK
    RnLtP45kD2rn6iZq3/Pnj1IfPonsdaNttb+2fhpFWa/r1sUyYadWeHs72vH83MgB
    I6h3Ae9ilF5tYLs2m6u8rKFM8zZhixSh
    =a8FR
    -----END PGP MESSAGE-----

### Verificación de Identidad

Como con OTR, es importante que verifiques las llaves PGP de las personas con quienes te comunicas. En PGP haces esto usando tu llave privada para firmar digitalmente la llave pública de alguien más.

Desde Thunderbird puedes dar click en el menú Enigmail y abrir Administrador de claves. Puedes seleccionar la opción "Mostrar por defecto todas las claves" para ver todas la llaves de tu llavero. Desde aquí puedes importar llaves desde archivos, desde el portapapeles, o desde servidores de llaves. También puedes generar nuevos pares de llaves, y ver los detalles de todas las llaves en tu llavero.

Como con las llaves OTR, cada llave PGP tiene una única huella digital. Y como con OTR, necesitas leer la huella digital entera para estar seguro que la llave pública que estás viendo en realidad pertenece a la persona a la que crees que pertenece.

Puedes dar click derecho en una llave en esta lista y escoger propiedades para ver su huella digital. Aquí están los detalles de la llave PGP que el software de cifrado de disco [TrueCrypt](http://www.truecrypt.org/) utiliza para firmar digitalmente las versiones de su software.

![](https://raw.github.com/micahflee/encryption-works/master/images/key_properties.png)

También como en OTR, necesitas verte en persona, hablar por teléfono, o usar una sesión OTR ya verificada para comparar cada caracter de la huella digital.

Después de que has verificado que la llave pública que tienes pertenece a la persona que tú crees que pertenece, puedes dar click derecho y escoger "firmar clave". 

![](https://raw.github.com/micahflee/encryption-works/master/images/key_signing.png)

En la captura de pantalla de arriba he seleccionado la opción "Local signatures (cannot be exported)". De esta manera, puedes firmar llaves PGP, lo cual es necesario para que Enigmail y otro software PGP muestren mensajes de seguridad que tengan sentido, pero no corres el riesgo de [accidentalmente publicar con quien te comunicas en un servidor de llaves PGP](https://en.wikipedia.org/wiki/Key_server_%28cryptographic%29#Privacy_concerns).

Si recibes un correo cifrado de alguien que conoces pero el correo no está firmado digitalmente, no puedes estar completamente seguro que fué en realidad escrito por la persona que tú crees. Es posible que haya sido alguien que falsificó su dirección de correo o comprometió su cuenta de correo.

Si tu amiga te dice en este correo que ella generó un nueva llave, tienes que encontrarte con ella en persona o hablarle por teléfono y leer sus huellas digitales antes de que puedas estar seguro que no estás bajo un ataque.

### Ataques

Si no verificas las identidades no tienes forma de conocer si estás siendo víctima o no de un ataque MITM.

El periodista del Washington Post Barton Gellman, a quien Edward Snowden confió información acerca del programa PRISM de la NSA, [escribió acerca de su experiencia usando PGP](http://www.washingtonpost.com/world/national-security/code-name-verax-snowden-in-exchanges-with-post-reporter-made-clear-he-knew-risks/2013/06/09/c9a25b54-d14c-11e2-9f1a-1a7cdee20287_story.html).

> El jueves, antes de que El Post publicara su primera historia, hice contacto en un canal nuevo. Él no me esperaba allí y respondió alarmado.
> 
> "¿Te conozco?" escribió.
>
> Yo le envié una nota por otro canal para verificar mi "huella digital," una precaución que habíamos estado usando desde hace algún tiempo. Yo estaba cansado, y le envié una equivocada. "Esa huella no es del todo correcta," me escribió, preparándose para desconectarse. "Estás siendo MITM'd." Él estaba hablando acerca de un ataque "de hombre en el medio", una técnica estándar de la NSA para evadir el cifrado. Yo rápidamente corregí mi error.

Snowden tenía razón al ser cauteloso e insistir en revisar la nueva huella digital de Gellman. PGP, si es usado correctamente, proporciona las herramientas necesarias para prevenir ataque MITM. Pero estas herramientas sólo funcionan si los usuarios son precavidos en cuanto a la verificación de identidad.

## Tails: The Amnesic Incognito Live System

Usar "cripto-sistemas fuertes implementados de forma apropiada" tiene una gran curva de aprendizaje y requiere usuarios dedicados que realicen un trabajo extra para tomar el control de su propia privacidad, lo cual es la principal razón por la que OTR y PGP actualmente no son ampliamente utilizados. Pero incluso cuando usas estas herramientas, ¿cómo puedes asegurar "seguridad de punto final" cuando no puedes necesariamente confiar en tu sistema operativo u otro software del que dependes día a día? 

La solución es utilizar un sistema operativo completamente diferente compuesto en su totalidad por "software en el que puedes confiar" cuando tienes una seria necesidad de privacidad real. [Tails](https://tails.boum.org/about/index.en.html) ayuda a resolver este problema.

> Tails es un sistema live que pretende preservar tu privacidad y anonimato. Te ayuda a utilizar la Internet de forma anónima casi desde cualquier parte y en cualquier computador sin dejar rastro de uso a menos que lo especifiques de forma explícita.
>
> Es un sistema operativo completamente diseñado para ser usado desde un DVD o una memoria USB independientemente del sistema operativo original del computador. Es software libre y está basado en Debian GNU/Linux. 
>
> Tails viene con varias aplicaciones incorporadas preconfiguradas con la seguridad en mente: navegador web, cliente de mensajería instantánea, herramientas de oficina, editor de imagen y sonido, etc. 

Tails no es para todo el mundo. Todavía es difícil de utilizar en comparación con los sistemas operativos normales, es lento, no tiene todo el software que podrías desear. Pero Tails tiene todas estas propiedades porque está específicamente diseñado para hacerle más difícil a los usuarios estropear su seguridad de punto final. Si estás en una posición en la que piensas que la NSA, o cualquier otro atacante potencial, pueda tenerte como blanco a tí y a tus colegas (la relación periodista/delator viene a la mente) esta es una de las mejores herramientas disponibles.

Como Tails no es práctica para el uso diario en el computador, es una buena idea adquirir el hábito de usar OTR y PGP también en tu sistema operativo normal. Tails por sí mismo no ayudará a minimizar los efectos de las redes de espionaje, pero cifrar tanto como puedas en tu día a día sí lo hará. 

Cada vez que arrancas Tails empiezas desde cero. Cualquier cosas que hayas hecho en tus sesiones previas en Tails es borrada y el sistema es revertido de nuevo al estado por defecto. Esto significa que incluso si te infectas con malware mientras usas Tails, la próxima vez que lo inicies el malware se habrá ido. 

Puedes empezar a usar Tails [descargando](https://tails.boum.org/download/index.en.html) la imagen DVD y quemándola en un DVD. Luego necesitas arrancar en este DVD. Este paso es diferente dependiendo de qué modelo de computador tienes, pero casi siempre incluye entrar a la BIOS y cambiar el orden de arranque para que tu computador intente arrancar desde el DVD antes de que trate de hacerlo desde el disco duro. En computadores más nuevos podrías necesitar deshabilitar el ["arranque seguro" UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface#Booting) también en la BIOS, esto es algo de criptografía utilizada para asegurarse de que tu computador sólo arranque versiones de Windows firmadas digitalmente (que, como efecto, hace más difícil para las personas arrancar sistemas operativos diferentes a Windows). El [sitio web de Tails](https://tails.boum.org/download/index.en.html#start) tiene más información sobre arrancar herramientas desde un DVD o memoria USB.

Después de arrancar desde el DVD tienes la opción de instalar Tails en una memoria USB, lo cual es especialmente útil porque te permite configurar un [volumen persistente](https://tails.boum.org/doc/first_steps/persistence/index.en.html), una sección cifrada de tu memoria USB para almacenar tu información. A pesar de arrancar desde cero cada vez que inicias Tails, es importante para tí que puedas tener acceso a tus llaves OTR y PGP, tus configuraciones de Claws Mail (más abajo) y Pidgin, y cualquier otro documento con el que estés trabajando. Tu volumen persistente te permite hacer esto.

### PGP y correo en Tails

Mencioné usar Thunderbird con la extensión Enigmail para acceder a tu correo y utilizar PGP, sin embargo este software no viene con Tails. Tails viene con [Claws Mail](http://www.claws-mail.org/) que incluye un plugin PGP.

![](https://raw.github.com/micahflee/encryption-works/master/images/claws_mail.png)

En lugar de utilizar la interfaz gráfica de administración de llaves PGP de Enigmail para importar, exportar, generar, ver detalles, y firmar llaves, puedes dar click en el ícono del portapapeles en la esquina superior derecha de la pantalla y escoger Administrar llaves para abrir [Seahorse](https://live.gnome.org/Seahorse), que ofrece estas mismas funcionalidades.

![](https://raw.github.com/micahflee/encryption-works/master/images/tails_manage_keys.png)

### Flujo de Trabajo

Para empezar a tener comunicaciones privadas con tus amigos y colegas con una seguridad de punto final alta, aquí están los pasos que necesitas seguir:

* Reúnete con tus amigos cara a cara. Cada persona debería traer su propio computador y una memoria USB.
* Descarga y quema un DVD Tails. Arranca Tails y crea memorias USB Tails para cada persona.
* Cuando cada uno tenga una memoria USB Tails, cada persona debe arrancar Tails en su propio computador y configurar un volumen persistente en su USB. Como este volumen está cifrado, cada persona debe tener su propia frase de contraseña segura que necesitará para ingresar cada vez que arranque en Tails. Todos deberán reiniciar sus computadores de nuevo en Tails y esta vez montar el volumen persistente.
* Cada persona debe crear una nueva cuenta de Jabber con un seudónimo. Una forma de hacerlo es ir a [https://register.jabber.org/](https://register.jabber.org/) en Iceweasel. Como Tails hace que todo el tráfico de Internet vaya a través de Tor, esta es una forma efectiva de crear una cuenta de Jabber anónima. 
* Cada persona debe abrir Pidgin y configurarlo para usar su nueva cuenta de Jabber y crear una nueva llave OTR. Todos deben agregarse unos a otros a su lista de amigos y empezar sesiones OTR con los otros. Como todos están en el mismo lugar, es la oportunidad perfecta para comparar huellas digitales y verificar la identidad de todas las partes, para que puedan comunicarse de forma segura a través de Internet en el futuro.
* Cada persona debe crear también una nueva dirección de correo con un seudónimo. Algunos proveedores de correo, como Gmail, hacen que sea muy difícil crear cuentas nuevas si se utiliza Tor y se permanece anónimo, así que encuentren otros proveedores de correo para usar en su lugar. Asegúrense de que su proveedor de correo soporte IMAP (para que puedan utilizar un cliente de correo de escritorio) sobre SSL (para que su cliente de correo use cifrado cuando se comunique con el servidor de correo). Si todos escogen el mismo proveedor de correo, los correos que se envíen entre las cuentas nunca saldrán del servidor de correo, lo cual reduce los metadatos acerca de su uso de correo disponibles para cualquiera que tenga redes de espionaje y vigilancia en Internet.
* Cada persona debe generar una nueva llave PGP para sus direcciones de correo. Como con el cifrado de disco, es importante escoger una frase de contraseña fuerte cuando se genere la llave PGP.
* El cliente de correo habilitado para PGP que viene con Tails es llamado Claws Mail. Cada persona debe configurar Claws Mail para usar su nueva dirección de correo, y luego enviar por correo una copia de su llave pública a todas las otras personas en el lugar.
* Cada persona debe importar la llave pública de todos los demás en su llavero, y debe verificar manualmente la huella digital PGP. No salten este paso. Al final, cada persona debe tener un llavero que contiene las llaves firmadas de cada una de las otras personas.

Si un atacante malicioso físicamente roba tu memoria USB Tails, la modifica, y te la regresa, él puede comprometer toda la seguridad de Tails. Por esta razón, es importante mantener tu memoria USB contigo todo el tiempo.

Si el director de la CIA y general de cuatro estrellas retirado David Petraeus y su biógrafa Paula Broadwell hubieran decidido utilizar Tails, Tor, OTR y PGP, su [aventura extramarital](https://en.wikipedia.org/wiki/Petraeus_scandal) posiblemente habría permanecido en secreto.

## Una Oportunidad para Luchar

Proteger tu privacidad en la era de la vigilancia ubicua de la NSA es increíblemente complejo. Adquirir un entendimiento básico de los conceptos involucrados, y en menor medida utilizar el software que está disponible, tiene una gran curva de aprendizaje. 

Pero incluso con [acceso directo a todos los datos viajando a la velocidad de la luz a través de los cables principales de fibra óptica de la Internet](http://www.guardian.co.uk/uk/2013/jun/21/gchq-cables-secret-world-communications-nsa), incluso con la [cooperación de las más grandes compañías de tecnología de los Estados Unidos](http://www.washingtonpost.com/wp-srv/special/politics/prism-collection-documents/) (que son extremadamente difíciles de boicotear para la gente), el más grande, más poderoso, y mejor financiado aparato de vigilancia que la humanidad jamás haya visto no puede derrotar a las matemáticas. 

El reto del nuevo movimiento cypherpunk es hacer que el cifrado seguro y verificado de extremo a extremo sea accesible para todo el mundo, y activado por defecto.
