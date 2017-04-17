# Encryption Works
## A Guide to Protecting Your Privacy for Journalists, Sources, and Everyone Else

*Dedicated to cypherpunks, and to whistleblowers past and future.*

A publication of [Freedom of the Press Foundation](https://freedom.press/). Original version written by Micah Lee and published July 2013. Updated version written by Tommy Collison and published September 2015. Licensed as [Creative Commons Attribution 3.0 Unported](https://creativecommons.org/licenses/by/3.0/).

If you're interested in contributing to Encryption Works, or have ideas for what this guide should cover, please check out the project on [GitHub](https://github.com/freedomofpress/encryption-works/blob/master/CONTRIBUTING.md).

> Encryption works. Properly implemented strong crypto systems are one of the few things that you can rely on. Unfortunately, endpoint security is so terrifically weak that NSA can frequently find ways around it.
>
>—Edward Snowden, answering questions live on the [Guardian's website](http://www.guardian.co.uk/world/2013/jun/17/edward-snowden-nsa-files-whistleblower).

Edward Snowden’s NSA revelations have caused a sea change in how the world’s citizens perceive their privacy and security online. News reports have shown the US spy agency and its global partners [have vacuumed up the metadata](http://www.theguardian.com/world/2013/jun/06/nsa-phone-records-verizon-court-order) of all Americans’ phone calls en masse, [scanned large portions](http://www.nytimes.com/2015/08/16/us/politics/att-helped-nsa-spy-on-an-array-of-internet-traffic.html) of the world’s emails, [tracked the locations](https://www.washingtonpost.com/world/national-security/nsa-tracking-cellphone-locations-worldwide-snowden-documents-show/2013/12/04/5492873a-5cf2-11e3-bc56-c6ca94801fac_story.html) of hundreds of millions of people at a time, and recorded the phone calls of entire countries.

Journalists or ordinary citizens who have no prior technical skills may feel helpless when it comes to protecting themselves. But just as technology has enabled government surveillance—not just from the US, but also in Russia, China and beyond—it can also provide a shield to safeguard your communications more comprehensively than at any other time in history.

The goal of this guide is to explain, in easy-to-understand language, the threats that you may face when communicating online, and many of the steps you can take to mitigate those threats using open-source software, tried-and-true digital security techniques, and encryption. In short, encryption works—this guide explains why, and how.

It takes a bit of patience, but no matter your skill set, you can learn how to use encryption tools to better protect yourself when emailing, calling, texting, or using your computer even when you are not connected to the internet.

It’s important to remember that no security tool will 100% protect you against all forms of surveillance. Criminals, governments, and corporations have many techniques at their disposal and vast budgets to constantly develop new techniques for spying. But by implementing the practices in this guide, your private communications will be far better protected and you will be in a better position to maintain control over your private information—whether you are a journalist, a source, or anyone else.

## Software You Can Trust

> Cypherpunks write code. We know that someone has to write software to defend privacy, and since we can't get privacy unless we all do, we're going to write it. We publish our code so that our fellow Cypherpunks may practice and play with it. Our code is free for all to use, worldwide.
>
>—Eric Hughes, in his 1993 Cypherpunk Manifesto.

One of the most alarming aspects of the Snowden disclosures was the complicity of several software companies, who not only handed over data to the NSA, but also purposely designed their software to allow the NSA access to customer data. Specifically, The Guardian reported on voluntary sharing programs between US companies and US spy agencies that involved circumventing the encryption designed to protect users:

> Microsoft has collaborated closely with US intelligence services to allow users' communications to be intercepted, including helping the National Security Agency to circumvent the company's own encryption, according to top-secret documents obtained by the Guardian. […] In July last year, nine months after Microsoft bought Skype, the NSA boasted that a new capability had tripled the amount of Skype video calls being collected.
>
> [“Microsoft handed the NSA access to encrypted messages.”](http://www.theguardian.com/world/2013/jul/11/microsoft-nsa-collaboration-user-data) The Guardian. July 11, 2013.

In addition, Bloomberg reported that Microsoft had given information to the NSA about software bugs before they fixed them:

> Microsoft Corp. (MSFT), the world's largest software company, provides intelligence agencies with information about bugs in its popular software before it publicly releases a fix, according to two people familiar with the process. That information can be used to protect government computers and to access the computers of terrorists or military foes.
>

> ["U.S. Agencies Said to Swap Data With Thousands of Firms."](http://www.bloomberg.com/news/2013-06-14/u-s-agencies-said-to-swap-data-with-thousands-of-firms.html) Bloomberg. June 14, 2013.
Not only is this a dangerous act which places innocent customers at risk of being hacked just so the NSA can spy on their targets, but it also means that the NSA, with enough effort, has potentially been handed the keys to any computer running Windows, MS Office, Skype, or any other piece of Microsoft software, including their SkyDrive cloud storage software. This would allow the NSA, or any other attacker to circumvent any encryption one uses with communications.

How could Microsoft get away with this? The problem lies with proprietary, or closed-source software, which includes much of what’s released by Microsoft, Apple, and Google. Software is said to be either open-source or closed-source, depending on whether the underlying code is publicly available for independent observers to review and audit it for backdoors or vulnerabilities. It’s much more difficult to independently verify that secret backdoors don’t exist in closed-source software at the clandestine demands of the surveillance state.

This is not to say we can't use what we've learned through the Snowden revelations, along with other sources of information, to make an educated guess as to whether certain closed-source programs are trustworthy; it is just that we have no reliable way to verify that we are not mistaken in allocating this trust. While it was revealed Microsoft openly collaborated with the US government, there was not evidence Apple did the same. However, some speculate Apple may have collaborated with the NSA, or at least "thrown source code over the fence" such that the NSA could analyze it and find vulnerabilities. Here is one such speculative statement from security researcher Jacob Appelbaum discussing the NSA iOS exploit codenamed DROPOUTJEEP:

> Do you think that Apple helped them build that? I don't know. I hope Apple will clarify that. I think it's really important that Apple does that. Here's the problem: I don't really believe that Apple didn't help them. I can't prove it--yet--but [the NSA] literally claim that anytime they target an iOS device that it will succeed for implantation. Either they have a huge collection of exploits that work against Apple products, meaning that they are hoarding information about critical systems that American companies produce and sabotaging them, or Apple sabotaged it themselves. Not sure which one it is. I'd like to believe that since Apple didn't join the PRISM program until after Steve Jobs died, that maybe it's just they write shitty software. We know that's true.
>
>—Jacob Appelbaum, in his "To Protect and Infect, the Militarization of the Internet" talk at 30c3

Since the revelations, Apple has been more publicly outspoken about its commitment to user privacy. Apple CEO Tim Cook recently released an impassioned open letter in which he affirmed Apple’s commitment to privacy. In it, he claimed that no Apple device has a backdoor which would allow a government to access user data, and that its iMessage and FaceTime protocols are fully end-to-end encrypted, so even Apple can't decrypt the messages if they wanted (or were forced) to.

> “Finally, I want to be absolutely clear that we have never worked with any government agency from any country to create a backdoor in any of our products or services. We have also never allowed access to our servers. And we never will.”
>
> ["A message from Tim Cook about Apple’s commitment to your privacy."](https://www.apple.com/privacy/) Apple.

While the rhetoric is promising, and there's evidence Apple is [telling](http://www.washingtonpost.com/business/technology/2014/09/25/68c4e08e-4344-11e4-9a15-137aa0153527_story.html) the truth, it's very hard to technically verify this. We’re forced to believe Cook. This is a step in the right direction, but we shouldn’t have to rely on blind trust for our online privacy. Such verification should be built into the software itself.

This is why free and open-source software is more reliable in this regard. Free and open-source software is developed with open bug trackers, open mailing lists, open governing structures, and open-source code. While it's not impossible, free and open-source software makes it much more difficult for such projects to betray their users as Microsoft did.

### Types of Encryption

It’s useful here to delineate between different types of encryption—encryption at rest, encryption in transit, and end-to-end encryption—as well as endpoint security.

When Snowden refers to endpoint security being “terrifically weak,” he's referring to the security of the computers on either end of the conversation—the ones doing the encrypting and decrypting. For example, if you send an encrypted email to a friend and someone has managed to install a [keylogger](https://en.wikipedia.org/wiki/Keystroke_logging) on your computer, your adversary can spy on the entire message as well as the passphrase that’s protecting your encryption keys. In this case, your encryption setup isn’t worth very much.

But secure communications rely on more than just endpoint security—your data first needs to be secure in transit, as it passes over the Internet. Take the same example, where you're sending your friend an email. With a regular email message, your email provider (such as Gmail or Yahoo) may encrypt it as from your computer to its servers, but once it hits the tech company servers, Google or Yahoo can read it. (Before the Snowden revelations, hardly any email providers even provided this type of security and it allowed the NSA [to siphon off millions of emails](https://www.washingtonpost.com/world/national-security/nsa-infiltrates-links-to-yahoo-google-data-centers-worldwide-snowden-documents-say/2013/10/30/e51d661e-4166-11e3-8b74-d89d714ca4dd_story.html) from the Internet backbone).

Tools such as Facebook Chat also promise transit encryption, meaning that the data is encrypted between your computer and Facebook's server, but can be seen by Facebook as it's being delivered to the recipient. This isn't true of end-to-end encryption, meaning that service providers can't look at the content of your communications even if they wanted to. It's not enough to ask whether a service provider _intends_ to circumvent its own encryption; providers rarely do. Instead, we must ask whether a service _can_ circumvent encryption, by nature of its design. If the answer is yes, you cannot trust the security of that service, because secure communication relies on taking advantage of each of these different types of encryption—it's not enough to rely on just one.

However, PGP encryption goes a step farther: it provides end-to-end encryption for email, so the message cannot be read in plaintext until one of the conversation partners decrypts it on either end of the conversation. You can read more about how to set up PGP and what it can be used for later in this guide.

### Threat Models

> "The sad fact is that when it comes to the internet, everybody is a spy: the government, the service providers watching your packets whiz by, the employer who operates the network you're reading this post on, the lurker on the wifi at Starbucks. The ubiquity of digital communications has made it harder than ever before to engage in truly private conversations."
>
>—John Cook, [talking](http://politburo.gawker.com/introducing-the-gawker-media-securedrop-1688075673) about why Gawker set up a SecureDrop instance.

Before learning about how to use encryption tools, you should familiarize yourself with threat modeling, or risk assessment. To best understand what tools you need to learn, it's important to look at your workflow and assess areas where you could be targeted, and therefore what you need to protect. Threat modeling involves asking questions about your work and identifying sensitive information and attack vectors.

Stories about the [lengths](http://www.nytimes.com/2013/08/18/magazine/laura-poitras-snowden.html?pagewanted=all&_r=0) Laura Poitras and Glenn Greenwald have to go through to work on the NSA documents might make you think that only national security journalists need to worry about the NSA or encryption.

There are dozens of reasons people should use encryption even if you're not a journalist or a whistleblower—your medical details, credit card info, and personal photos shouldn't be fair game for hackers or governments.

The NSA isn't the only adversary journalists have to be wary of. Imagine a newsroom that relies on a cloud-based storage system for documents. You and your colleagues are working on a story over the course of a few weeks. Just as you're beginning to edit the final draft, a reporter is fired. He returns his work laptop but nobody thinks to revoke his access to the cloud storage system your newsroom uses. He takes the story and the months of research to a rival newspaper and scoops you.

What steps could have been taken to stop this from happening? Working through this scenario will go a long way towards threat modeling, meaning we figure out the threats facing us and decide how best to defend against them.
It starts by asking questions such as:

- What are you protecting?
- Who/what are you protecting against?
- What steps can you take to do that?

Take the above example of the newsroom which got scooped. They want to protect their story—they don't want all their research to go unrewarded and some other news outlet to get the credit. They're protecting against disgruntled ex-employees as well as external attackers. To prevent this from happening, the newsroom can take simple steps and implement strict practices where journalists have their access revoked to editorial documents as soon as their employment is terminated.

Jonathan Stray, Tow Center for Digital Journalism Fellow, has [more examples of threats](https://source.opennews.org/en-US/learning/security-journalists-part-two-threat-modeling/#threat-modeling) that have nothing to do with the NSA:

>*Police Misconduct.* You are reporting a story about local police misconduct. You have talked to sources including police officers and victims. You would prefer that the police commissioner not know of your story before it is ready to be published, to avoid any possible interference.
>
>*Insider Trading Whistleblower.* You are reporting on insider trading at a large bank and talking secretly to a whistleblower who may give you documents. If they are identified before the story comes out, at the very least you will lose your source. The source might lose their job or face legal trouble.
>
>*Syria War Photographer.* You are a photojournalist in Syria with digital images you want to get out of the country. Some of the images may identify people working with the rebels who could be targeted by the government. A security failure could mean someone loses their life.

As you can see, threat modeling concerns how you think about a problem as much as what you do to solve it.

A 2013 study [showed](http://www.reuters.com/article/2014/03/28/us-media-cybercrime-idUSBREA2R0EU20140328) 21 out of the top 25 media organizations have been targeted by a nation state. However, state-sponsored hacking may not be the biggest danger facing local journalists—it probably isn't how people will come by your data or compromise you. If you're a journalist in the US, you may be much more at risk of your story being scooped, or of falling victim to a subpoena from an overzealous prosecutor who will secretly get access to all of your email.

Journalists' email accounts are often the target of attacks, but it's more common for hackers to use social engineering to trick Gmail (or you) into resetting the password rather than hacking Google itself. For example, the CIA director's AOL account was recently "hacked" by a 13-year old who [merely answered some security questions](http://www.nbcnews.com/tech/tech-news/cia-director-my-email-was-hacked-yours-can-be-too-n452271) to trick AOL into giving up the password, rather than performing any technical attack on the password itself.

!["Security." Courtesy of XKCD.](http://imgs.xkcd.com/comics/security.png)

Let's look at Stray's example of a journalist reporting on local police misconduct: this is a story which will have sensitive documents to store, and sources to protect. These are the assets we're trying to protect, so that the corrupt officials in question aren't tipped off in advance about the story.

The adversary in this case isn't as sophisticated as the NSA, but local authorities can still subpoena emails or phone call records to see who you've been talking to.

An important distinction that will help you threat model is the difference between *confidentiality* and *anonymity*. Confidentiality refers to the contents of a conversation being hidden, while anonymity refers to the identity of the conversants being hidden. Two users of an encrypted text messaging app such as Signal (discussed later) may have a confidential conversation, but since their Signal identities are tied to their phone numbers their conversation is not anonymous. On the other hand, a few Tor Browser Bundle users may have an anonymous conversation on an internet forum site, but since they're posts are unencrypted and publicly visible, their conversation is not confidential. Note anonymity does not necessarily mean the participants of a conversation do not know each other's identities, rather that those outside the conversation do not.

When working on a story with a colleague it is likely confidentiality will suffice—it is no secret you talk, but what you talk about should remain confidential. On the other hand, you may wish to communicate with a source or consultant on a particular issue anonymously *and* confidentially; neither of you wishes it be know you have a relationship, and what you talk about should also not be known to any third party.

### Strong passphrases and password managers

With threat modeling in mind, there are several easy steps you can take to improve your security before ever encrypting your emails or chats. These steps can be just as important—if not more so—than the more complicated steps described later in this guide.

The first meaningful action you can take towards ensuring your digital security is to protect your computer and online accounts with a strong password. This is the first—and most important—line of defense between you and anyone with physical access to your computer who wants to impersonate you or steal your data.

Traditionally, computer users were encouraged to create and choose a password and attach some numbers onto the end of it. This would lead to passwords such as _Tr0ub4dor&3,_ to reference a popular [XKCD comic](https://xkcd.com/936/).

!["Password Strength." Courtesy of XKCD.](http://imgs.xkcd.com/comics/password_strength.png)

The problem with this password is that it's hard to remember and it's not especially secure against a brute-force password-guessing attack.

Passphrases are longer than passwords. "The quick fox jumps over the lazy dog" would be a long and memorable passphrase, but it's a common phrase ([in some circles](https://en.wikipedia.org/wiki/The_quick_brown_fox_jumps_over_the_lazy_dog)), so it's not a good idea to use since password crackers are often preloaded with lists of common phrases.

> Please confirm that no one has ever had a copy of your private key and that it uses a strong passphrase. Assume your adversary is capable of one trillion guesses per second.
>
>—Edward Snowden's first email to Laura Poitras. Source: [WIRED.com](http://www.wired.com/2014/10/snowdens-first-emails-to-poitras/).

The XKCD comic's advice, to invent a passphrase consisting of unconnected words such as "correct horse battery staple," is good advice, but it's surprisingly hard to come up with four or five words that are truly unconnected and to choose words at random. Humans are bad at randomness, and words often come in groups—I say brown, you think cow; I say garden, you think shed. Further, when asked to choose a word at random, humans exceedingly pick from only a small fraction of the English language—even words like spaetzle, laconic, and imbroglio may be more common than you think.

The solution is to use a password manager. This is an application which creates and stores passwords in an encrypted "vault" which is protected by a strong passphrase which you memorize. This reduces the number of passphrases you have to memorize to one. There are a handful of well-known passphrase managers, such as [1Password](https://agilebits.com/onepassword) or [LastPass](https://lastpass.com/). We recommend using [KeePassX](https://www.keepassx.org) because it's open-source and a separate application (as opposed to a browser extension). The app generates lengthy strings of characters, such as _0e3@ft5n(xx1gncio,ofigryj0^4vl_, which is hard to remember but quite secure, and can be copied and pasted from the application into your web browser. For mobile use, there is [miniKeePass](https://itunes.apple.com/us/app/minikeepass-secure-password/id451661808)(iOS) and [KeePassDroid](https://play.google.com/store/apps/details?id=com.android.keepass&hl=en)(Android). Unfortunately, there is no simple way to synchronize databases as none of these KeePass-based applications are networked.

For the master passphrase, and for other passphrases you have to memorize or enter regularly, you can use [Diceware](http://world.std.com/~reinhold/diceware.html). This creates a passphrase made up of 6 or more words, such as _cleft cam synod lacy yr wok_. This is more secure than a password like _Tr0ub4dor&3_. Why? Check out what Micah Lee [has to say](https://firstlook.org/theintercept/2015/03/26/passphrases-can-memorize-attackers-cant-guess/) about passphrase entropy (the metric we use to measure password security):

> At one trillion guesses per second—per Edward Snowden’s January 2013 warning—it would take an average of 27 million years to guess [a Diceware] passphrase.
>
> Not too bad for a passphrase like “bolt vat frisky fob land hazy rigid,” which is entirely possible for most people to memorize. Compare that to “d07;oj7MgLz’%v,” a random password that contains slightly less entropy than the seven-word Diceware passphrase but is significantly more difficult to memorize.

As well as protecting password vaults, you should also choose good passphrases for your PGP secret key and disk encryption.

### Two Factor Authentication (2FA)

Another way to beef up the security of your accounts is to enable two-factor authentication, which alters your login process and provides you with a second layer of protection against people trying to change or brute-force your password. In addition to asking you for something you know (your password), you also have to provide something you have (physical access to your cellphone). This can be done in a couple of ways, such as a code sent to you via SMS which you need to enter during the login process. Other means include "one-time password" apps, QR codes, or smartcards. If using a one-time password mobile app, we recommend using open-source FreeOTP for [Android](https://play.google.com/store/apps/details?id=org.fedorahosted.freeotp&hl=en) and [iOS](https://itunes.apple.com/us/app/freeotp-authenticator/id872559395), rather than the popular closed-source app Google Authenticator.

With 2FA, even if an attacker somehow learns your password, they won’t be able to log in without the second factor associated with the account. After the 2014 celebrity photo hack, Recode [reported](https://recode.net/2014/09/01/apple-says-it-is-actively-investigating-celeb-photo-hack/) that two-factor authentication would probably have prevented the attackers from gaining access to the iCloud accounts.

For information on how to set up two-factor authentication on most websites and services, check out [turnon2FA.com](https://www.turnon2fa.com) or  [twofactorauth.org](https://twofactorauth.org).

### Hard-Drive Encryption

A journalist's computer is an unparalleled look into their life. It's a rolodex, a research history, and a store of interview notes and works-in-progress. For this reason, it's important to lock down access to it, both when you're at the office and when you're traveling.

Encrypting your hard-drive doesn't just make it harder for law enforcement to access your documents, it makes you more secure generally—if your laptop is stolen, the thief can't rip out the hard-drive and extract sensitive data.

Disk encryption is available for Mac OS X, Windows, and Linux, but the steps for enabling it differ for each operating system. For information on how to encrypt your disk, check out Micah Lee's guide to [encrypting your laptop like you mean it](https://firstlook.org/theintercept/2015/04/27/encrypting-laptop-like-mean/) on The Intercept.

For journalists who travel internationally, it's important to remember that federal courts have traditionally [affirmed](https://www.eff.org/deeplinks/2010/11/effs-guide-protecting-devices-data-border) that the government does not need suspicion of criminal activity to search a traveler's laptop at the border (the Ninth Circuit being the only [exception](https://scholar.google.com/scholar_case?case=13727924395632289367)). Non-citizens may be turned away if they do not comply, and U.S. citizens can face extended questioning. It's also important to note that it is not entirely clear what geographic region legally constitutes the US border; area up to 100 miles from a border line may be included (see this [ACLU factsheet](https://www.aclu.org/aclu-factsheet-customs-and-border-protections-100-mile-zone) for further analysis). It's up to the individual to decide how much hassle they're willing to risk, but there are some steps you can take to secure files when traveling.

- Have a separate computer for work travel, which does not contain sensitive material.
- Sign out of email accounts and power off laptops before approaching the border.
- As always, make regular backups, so the loss of a computer is not catastrophic.

As a general rule, consider the question "how bad would it be if a government had access to the files on this computer?" when weighing what should be stored on a computer you're crossing borders with.

If you're working on sensitive material, it's also a good idea to keep your laptop in your possession and line of sight as much as possible. This prevents an attacker from stealing or gaining access to the machine long enough to install malicious software on it. Devices left in hotel rooms are susceptible to this kind of attack so often that it's referred to as an "evil maid" attack.

## Encrypted Calls and Texts

>"Now we have free, easy-to-use tools which you can download on your smartphone, which is sitting in the room with you. For the iPhone, there's a program called Signal, by Open Whisper Systems. It's very good, I know the security model."
>
>—Edward Snowden on protecting communications in transit. ([Source](https://www.youtube.com/watch?t=149&v=j_kieJ-Ng2Q).)

Cryptography tools have been available to the public since the early 90s, but the Snowden disclosures kickstarted a renewed interest in widespread consumer cryptography. In response to usability issues with PGP and the ubiquity of smartphones, several new messaging apps providing end-to-end encryption have risen to prominence.

Chief among these is [Signal](https://whispersystems.org), a free and open-source application which employs end-to-end encryption, allowing users to have encrypted calls and text conversations. Signal is compatible with both [iOS](https://itunes.apple.com/us/app/signal-private-messenger/id874139669) and [Android](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms) devices.

![Signal messages are end-to-end encrypted.](images/signal.png)

It's important to note that as with most encryption tools, both parties need to be using the app for it to work. Signal uses your device's data connection (or WiFi) so users don't incur SMS fees.

Signal also makes it possible for you to verify the cryptographic identities of the people you communicate with. This is not possible in iMessage—the key fingerprints are totally hidden from and inaccessible to the end user. A fingerprint is simply a hexadecimal string of numbers and letters that summarizes and uniquely identifies an encryption key—an important concept that we'll be referring back to later.

It's important to remember what these apps can and can't do—while they will encrypt your conversations and log less metadata than traditional text messaging (Open Whisper Systems says they don't keep logs of who called who), you still have to use a valid cellphone number to sign up and, as always, beware of malware on your device.

It is important to remember that conversations over Signal are not anonymous. Since your Signal identity is tied to your phone number, and ["mobile phones are extremely loud metadata spewing fountains vomiting forth a trail of your life’s activities,"](https://medium.com/@thegrugq/signal-intelligence-free-for-all-5993c2f72f90), a whole lot of information regarding your conversation including:

* Who you are talking to and their phone numbers (and who they are talking to and so on).
* When and where you sent and received each encrypted message.
* When and where each encrypted call occured.

can be learned by anyone with access to your mobile carriers logs.

If you read the article linked just above, you'll see that The Grugq states "this is true for all mobile messenger apps, including Wickr, Silent Circle, WhatsApp, LINE, Telegram, etc. Mobile messengers do not provide anonymity, the best they can offer is protecting message content." His statement is true for all the applications he mentioned, however, it is still possible to have anonymous (and confidential) conversations on Android using the apps ChatSecure and Orbot in combination to route an encrypted messaging protocol over Tor. We recommend Signal over this combination for two main reasons:

* Signal is cross-platform
* ChatSecure uses a messaging protocol (XMPP w/ OTR) that was developed for desktops and does not adapt well to mobile usage

That said, sometimes you may need anonymity in addition to encryption on your mobile device. Use of Orbot and ChatSecure will be covered in the section on OTR.

### Doesn't Apple Provide End-To-End Encryption?

Apple made news when they [announced](https://www.apple.com/apples-commitment-to-customer-privacy/) that iMessage conversations were end-to-end encrypted, meaning that if Apple is served with a legal order, they could not decrypt your communications even if they wanted to.

>For example, conversations which take place over iMessage and FaceTime are protected by end-to-end encryption so no one but the sender and receiver can see or read them. Apple cannot decrypt that data.
>
> [What we’re most commonly asked for and how we respond.](https://www.apple.com/privacy/government-information-requests/) Apple.com

This was a big step, making iMessage more secure than traditional text messaging, and it's better than what most tech companies currently offer. But while both Signal and iMessage offer end-to-end encryption, there are some important distinctions that makes Signal a better choice:

* Signal gives users the ability to compare fingerprints and confirm the true identity of the other party receiving their message. Apple opaquely checks the fingerprints, giving users no way of doing their own checking, or being alerted when they change.
* Signal is open-source, allowing anyone to audit the code to ensure both that it is trustworthy (i.e., it does what it says it does and nothing else) and that there are no unintentional security flaws.
* Signal is cross-platform. You can have end-to-end encrypted conversations with your friends using Android phones as well.

![Signal fingerprint verification](images/Signal_fingerprint_verification.png)

As mentioned above, the inability to independently audit iMessage is a shortcoming of all closed-source software. Free and open-source software, by contrast, is available for the entire world to see how it works. This makes it much harder for the software to be compromised by an adversary without its maintainers or developers knowing. Apple has publicly [detailed the security of iOS](https://ssl.apple.com/business/docs/iOS_Security_Guide.pdf#39), which is laudable, but their claims and designs are more difficult to verify—unless you work for Apple and have access to the code. Signal is open-source, so it receives a higher degree of trust and credibility from the security community and the cryptographers who have examined its implementation of encryption algorithms. Plus, features are added and bugs are fixed based on feedback from the user base, and anyone with the requisite programming experience can submit contributions to Signal's further development.

## Anonymize Your Location with Tor

While you can often be tracked when browsing the Internet by both private corporations and governments, it's still possible to use the web and avoid many types of mass surveillance. The easiest way is to use the Tor Browser, a web browser based on Firefox. The Tor Browser allows you to browse the web while masking your IP address, which is generally a relatively accurate representation of your approximate location and can sometimes allow you to be uniquely identified.

The software is free and open-source and is an adapted version of the Firefox browser.

![The Tor Browser](images/tor_fpf.png)

The Tor network is made up of over 6,000 volunteer servers, called nodes. When you use Tor, your connection is routed through three of these nodes—called a circuit – before exiting onto the normal Internet. Anyone intercepting Internet traffic will think your location is the final node which your traffic exits from.

The EFF has a good graphical explanation of how Tor works:

![Tor 1](https://www.torproject.org/images/htw1.png)

![Tor 2](https://www.torproject.org/images/htw2.png)

![Tor 3](https://www.torproject.org/images/htw3.png)

### Setup

The easiest way to start using Tor is to download and install the [Tor Browser](https://www.torproject.org/download/download-easy.html.en). Once you download and install it, you'll see that it works like any other web browser but is a little bit slower, since your traffic is being routed through the Tor network to provide you with anonymity.

Some countries, such as [China](https://blog.torproject.org/blog/torprojectorg-blocked-gfw-china-sooner-or-later) and [Iran](https://blog.torproject.org/blog/iran-blocks-tor-tor-releases-same-day-fix) are able to block Tor because, by design, Tor exit nodes are public. It's possible to get around this by using what are known as [bridges](https://bridges.torproject.org/)—unlisted relays which may be less likely to be blocked by ISPs and/or governments.

When Snowden [was answering questions on the Guardian's website](http://www.guardian.co.uk/world/2013/jun/17/edward-snowden-nsa-files-whistleblower) from a "secure Internet connection", he was probably routing his traffic through the Tor network. He may have also been using a [bridge](https://bridges.torproject.org/) to connect to the Tor network to make the fact that he was using Tor from his IP address less obvious to eavesdroppers.

### Browsing Habits

Here are some further tips to enhance your security and privacy while using the Tor Browser. Some tips, such as disabling Flash, are good advice in any web browser.

- Use Tor's new [Security Slider](https://blog.torproject.org/blog/tor-browser-45-released) feature. This allows you some control over your Tor experience based on your threat model. Generally speaking, we recommend setting it to "Medium-High."
- Be careful of unencrypted sites, ones which begin with "HTTP" rather than "HTTPS." Tor anonymizes your Internet traffic but unencrypted connections can still be eavesdropped on between the final node and the website.
- Try to avoid downloading files such as PDFs or Microsoft Word
documents (which end in .doc or .docx), as they can be vehicles for malware that can be used by an attacker to de-anonymize your web browsing.

These limitations are designed to keep Tor as secure as possible. They can get in the way of your regular browsing habits, and so you should keep another web browser around (with add-ons such as [HTTPS Everywhere](https://www.eff.org/https-everywhere)) for other browsing.

### What Tor Doesn't Protect You From

It's important to remember that your Internet connection may not be secure just because it's anonymous. EFF has made a great [visualization of how Tor and HTTPS can work together to protect your privacy](https://www.eff.org/pages/tor-and-https).

There's been some discussion of global adversaries—governments or other actors who can monitor the Internet on a huge scale—de-anonymizing Tor traffic by large-scale surveillance. From the [documentation](https://tails.boum.org/doc/about/warning/index.en.html#index7h1) for Tails:

> A global passive adversary would be a person or an entity able to monitor at the same time the traffic between all the computers in a network. By studying, for example, the timing and volume patterns of the different communications across the network, it would be statistically possible to identify Tor circuits and thus matching Tor users and destination servers.

We don't know if the NSA and GCHQ are big enough to fit this definition of "global adversaries," but thanks to the Snowden documents we do know they monitor a large portion of the Internet. It's too early to say whether this large-scale surveillance is enough to defeat Tor's network anonymity in the general sense.

According to leaked NSA slides with titles such as ["Tor Stinks"](http://www.theguardian.com/world/interactive/2013/oct/04/tor-stinks-nsa-presentation-document), Tor is "still the King of high secure, low latency Internet Anonymity" with "no contenders." However, the same slides also indicate that the surveillance agency can de-anonymize "a very small fraction" of Tor users. Also important to note is that these slides are also several years old now, so we don't know what the current status of these powerful organizations' capabilities might be.

An attack like this becomes much harder as the number of nodes and the volume of traffic increases—not impossible, but more time-consuming and expensive. Everyone can pitch in and bolster the Tor network by setting up a node; since colleges and universities are often their own ISPs with strong infrastructure, students and staff are particularly [encouraged](https://www.eff.org/torchallenge/tor-on-campus.html) to set up a Tor node on campus.

Recently, the Tor Project [commented](https://blog.torproject.org/blog/preliminary-analysis-hacking-teams-slides) on reports that Hacking Team, the surveillance technology vendor which was massively hacked in July 2015, had managed to compromise the Tor network. The attack turned out to be a case of targeted surveillance rather than a widespread problem:

> The good news is that they don't appear to have any exploit on Tor or on Tor Browser. The other good news is that their proposed attack doesn't scale well. They need to put malicious hardware on the local network of their target user, which requires choosing their target, locating her, and then arranging for the hardware to arrive in the right place. So it's not really practical to launch the attack on many Tor users at once.

The attack reinforced what we already suspected about Tor: targeted attacks *can* de-anonymize Tor traffic, but widespread attacks probably aren't feasible for small companies.

You also have to be careful *where* you use Tor, since it could actually leave you *more* exposed in some instances, even though your traffic is encrypted. That's because network administrators can tell when someone is using Tor, even though they can't tell what websites you're browsing.

In December 2013, several members of the Harvard University administration [received](http://www.theverge.com/2013/12/18/5224130/fbi-agents-tracked-harvard-bomb-threats-across-tor) a bomb threat sent from a burner email address. The FBI and Harvard officials were able to trace the email back to a student who had sent the threat to avoid taking a final exam. The student had used an anonymous email with the Tor Browser, but still got caught because he used Tor from the Harvard network: administrators were able to tell he was one of the few people using Tor that morning and confronted him.

It's hard to have much sympathy for the prankster, but the fact that users can sometimes be de-anonymized is worrying for the many human rights activists and journalists who depend on Tor. This is why prominent security researcher Bruce Schneier [talks about](https://www.schneier.com/blog/archives/2015/06/why_we_encrypt.html) using encryption to provide "cover" for others who use encryption to save their lives.

As with all privacy-enhancing software, an attacker with physical access to the device can compromise you in any number of ways.

With all this said, using Tor still gives us many advantages. It makes the job of the global adversary much harder, and we leave much less identifying data on the servers we connect to through the Tor network. It makes it much harder to be the victim of a [man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) at our local network or ISP level. Even if some Tor circuits can be defeated by a global adversary, if enough people are getting their traffic routed through the same Tor nodes at the same time, it might be difficult for the adversary to tell which traffic belongs to which circuits.

## Off-the-Record (OTR) Chat

The best way to end-to-end encrypt your instant messages is to use something called OTR chat with a Jabber/XMPP account. While it's possible to use OTR with Google Talk or Facebook Chat, we don't recommend it because these services could drop support for OTR without warning. Plus, Jabber leaks less metadata than these services, especially if both people use the same Jabber server.

### Using OTR

To use OTR, you'll need to download additional software with your IM client. If you use Windows you can download and install [Pidgin](https://pidgin.im/) and the [OTR plugin](http://www.cypherpunks.ca/otr/). If you use Mac OS X you can download and install [Adium](https://adium.im), a free software chat application that includes OTR support. If you use GNU/Linux you can install the pidgin and pidgin-otr packages.

We recommend the OTR client ChatSecure, which is available for [Android](https://play.google.com/store/apps/details?id=info.guardianproject.otr.app.im]) and [iOS devices](https://itunes.apple.com/us/app/chatsecure/id464200063). Getting set up with using OTR with ChatSecure is pretty straightforward and should only take a few minutes. See the [EFF how-to](https://ssd.eff.org/en/module/how-install-and-use-chatsecure) for details. One thing to be aware of is that OTR requires both parties to have a consistent internet connection for the duration of the chat. If one party loses service the OTR session between them will end and no messages can be sent until both parties are back online *and* the session has been re-initiated. In short, OTR was no designed for the asynchronicity of the mobile world. For this reason, we recommend Signal as your main solution for confidential mobile messaging.

For a full explanation of how OTR works and how to set it up, check out The Intercept's guide to [chatting in secret while we're all being watched](https://firstlook.org/theintercept/2015/07/14/communicating-secret-watched/). As an added bonus, The Intercept also explains how to set up OTR to work with Tor so you can keep your chats both anonymous and encrypted.

As with PGP, which will be discussed in a later section, OTR is used for two things: **encrypting the contents** of real-time instant message conversations and **verifying the identity** of people you chat with. Identity verification is important, and something many OTR users neglect to do. While OTR is more user-friendly than other types of encryption, there are some things you should know about OTR to understand it fully and know what attacks against it are possible.

### OTR, Metadata, and Anonymity

 Note that OTR encrypts the contents of your chats but not the metadata related to them—who you talk to, how often, and when (i.e., it provides confidentiality, but not anonymity). You can use Google Talk and Facebook Chat with OTR, but we know that these services comply with surveillance requests from many governments and leave your metadata exposed, even if you're encrypting the content of your IM conversations. For this reason, we recommend using XMPP services that demonstrably take the necessary precautions to ensure user privacy on all fronts: XMPP servers that support communication over Tor, encrypt metadata (like the "to" and "from" fields) between servers, require OTR from the very beginning of a conversation, and have privacy-friendly logging policies. XMPP servers hosted by [Calyx Institute](https://www.calyxinstitute.org/projects/public_jabber_xmpp_server), [Riseup](https://help.riseup.net/en/chat) and [Duck Duck Go](https://duck.co/blog/post/4/xmpp-services-at-duckduckgo) score quite highly in this regard. Have a look at the [Public XMPP Server Directory](https://xmpp.net/directory.php) for even more options for privacy-forward XMPP services.

Unfortunately, there are few ways to easily route OTR-encrypted XMPP traffic over Tor. In fact because of the difficulty in set up and configuration for most operating systems and software clients, we discuss here just two—Android and Tails OS. You'll find the set up for Android below. Tails OS, discussed in its own section below, routes all traffic through Tor (and also conveniently ships with the Pidgin OTR client we recommend).

On Android, it is easy to run ChatSecure traffic over Tor, by using it in combination with an app called [Orbot](https://play.google.com/store/apps/details?id=org.torproject.android). This is fantastic because it's the easiest way to have conversations that are not just confidential, but anonymous from your mobile device. First, setup Orbot [like so](https://securityinabox.org/en/guide/orbot/android) (be sure to follow the instructions in section 4.2 if you plan on regularly running ChatSecure over Tor), and then open ChatSecure. ChatSecure will automatically try to connect over Tor [like so](https://securityinabox.org/en/hands-guide-content/using-orbot-chatsecure).

Note that to benefit from using ChatSecure (or Pidgin on Tails) over Tor, you must also create your account using Tor. All the clients and servers we recommend support *in-band registration*, which means you can create an XMPP account right from your client, without having to go online. We recommend using in-band registation to create your anonymous account, once you have your client routed over Tor.

### Keys

When you start using OTR, your chat client generates an encryption key and stores it in a file on your hard drive. If your computer or smartphone gets lost, stolen, or infected with malware, you should assume your key has been compromised—an attacker could impersonate you. If this happens, you should generate a new key and reverify yourself with your friends.

When you start a new OTR session, your OTR software and your friend's OTR software agree upon a session key. This temporary encryption key is used to encrypt and decrypt messages on a running basis during the conversation. If you start chatting with the same person later, your clients generate a brand new session key.

In this way, even if an eavesdropper is logging all of your encrypted OTR conversations—which NSA believes it is legally [allowed to do](http://www.forbes.com/sites/andygreenberg/2013/06/20/leaked-nsa-doc-says-it-can-collect-and-keep-your-encrypted-data-as-long-as-it-takes-to-crack-it/) in many cases, even if you're a US citizen and they don't have a warrant or probable cause—and later they compromise your OTR key, they cannot use it to go back and decrypt your old conversations.

This property is called forward secrecy, and it is a feature that OTR has which PGP does not. If your PGP secret key (more on this below) gets compromised, and the attacker has access to all the encrypted messages you've received, they can go back and decrypt them all.

### A Note About Gmail's "off the record" function.

When using Google Talk for instant messaging, there's a setting to "Go off the record," and it's useful to differentiate between this feature and what the Off-the-Record encryption software offers.

![Google's "Off the record" function may not be secure.](images/gtalk_off_the_record_john.png) ![Google's "Hangout history" function may not be secure.](images/hangouts_history.png)

Essentially, going off the record in Google Talk (or disabling the "Hangout history" function, if you've updated to Hangouts) does not store the conversation log in either conversation participant's Gmail chat history. This may seem more secure, but it only prevents the conversation participants from viewing the history of their own conversations. There is no guarantee or way of determining whether or not Google retains a copy of your conversation.

By comparison, conversations over Google Talk which use Off-The Record message encryption are only readable to the participants, and Google is never able to read the contents of your conversation.

### Verifying A Contact's OTR Fingerprint

If you want to use OTR to talk privately with friends, colleagues, and sources, they need to be using OTR too. An encrypted chat requires both people have keys, so if you're using OTR and you're chatting with a colleague who's using facebook.com, you cannot have an encrypted conversation.

When you start an encrypted OTR session, your chat software will tell you something like this:

> *** Encrypted OTR chat initiated. tommyc@jabber.ccc.de's identity not verified.

With OTR, each key has a fingerprint, a string of numbers and letters you can use to verify someone's identity. One of the OTR fingerprints for Tommy Collison, an editor of this guide, is AF4E5D5A D8AE95CB C1672DDC E44FA6F4 F8706C16. Unlike session keys, encryption keys are persistent: the fingerprint will stay the same across numerous conversations unless you switch devices or are the victim of a man-in-the-middle attack.

Fingerprints are typically unique to devices, not accounts. This means that if I chat with people on my Jabber account from my Mac and from my Android phone, those contacts will have two fingerprints for me.  It's important to repeat the verification step on each device with each contact you talk to.

![Verifying a contact's OTR fingerprint in Adium.](images/verifying_otr_fingerprints.png)

In the screenshot above, you can see the OTR fingerprints for both users in the session. The other person should see the exact same fingerprints, with positions swapped. In order to be sure that both parties are seeing the correct fingerprints you each need to find some other trusted channel to verify fingerprints. You could meet up in person, or talk on the phone if you can recognize their voice, or send a PGP-encrypted and signed email.

OTR fingerprints are 40 characters. It's statistically impossible to generate two OTR keys that have the same fingerprint. However, it is possible to generate an OTR key that isn't a collision but looks like one on cursory inspection. For example, the first few characters and last few characters could be the same with different characters in the middle. For this reason, it's important to compare all 40 characters to be sure you have the correct OTR key.

Without verifying keys you have no way to know that you're not falling victim to an undetected, successful MITM attack. Even if the person you're talking to is definitely your real friend because she knows things that only she would know, and you're using OTR encryption, an attacker might still be reading your conversation. This is because you might actually be having an encrypted OTR conversation with the attacker, who is then having a separate encrypted OTR conversation with your real friend and just forwarding messages back and forth. Rather than your friend's fingerprint your client would be seeing the attacker's fingerprint. All you, as a user, can see is that the conversation is "Unverified".

That said, it's better to use OTR unverified than it is to have a sensitive conversation through an unencrypted channel. Although manual fingerprint verification is the most secure way of verifying a chat partner's identity, there are some on-the-fly methods, such as when Laura Poitras asked someone both she and Snowden were in contact with to tweet Poitras's fingerprint, which provided external verification of the key:

![Micah Lee's tweet verified Laura Poitras's GPG fingerprint.](images/micah_fingerprint_tweet.png)

### Logs

OTR will encrypt the content of your chats, but there's another factor to consider when you're chatting with Off-The Record: logs.

Here is an excerpt from the chat logs of a conversation between WikiLeaks whistleblower Chelsea Manning (shown here as bradass87) and hacker Adrian Lamo, who turned her in to authorities. They were [published](http://www.wired.com/threatlevel/2011/07/manning-lamo-logs) by Wired.

> (1:40:51 PM) bradass87 has not been authenticated yet. You should authenticate this buddy.

> (1:40:51 PM) Unverified conversation with bradass87 started.

> (1:41:12 PM) bradass87: hi

> (1:44:04 PM) bradass87: how are you?

> (1:47:01 PM) bradass87: im an army intelligence analyst, deployed to eastern baghdad, pending discharge for "adjustment disorder" in lieu of "gender identity disorder"

> (1:56:24 PM) bradass87: im sure you're pretty busy...

> (1:58:31 PM) bradass87: if you had unprecedented access to classified networks 14 hours a day 7 days a week for 8+ months, what would you do?

As you can see from "Unverified conversation with bradass87 started," they were using OTR to encrypt their conversation, but excerpts were published on Wired's website and used as evidence in Manning's trail. The reason why? Lamo's OTR client was logging a copy of the conversation and saving the chat to a hard drive.

For journalists, logging conversations (by taking notes or using a tape recorder) is part of the job, but you should know that logging conversations greatly compromises your privacy. If Lamo's OTR client had logging turned off, it's likely that the above conversation would never have become part of the public record.

We recommend turning off logging by default and saving individual conversations only when necessary.

With the release of OTR 4.0 in September 2012, Pidgin stopped logging OTR conversations by default. As of July 2015, Adium still logs OTR conversations by default, and you must manually turn off logging yourself in Adium's Preferences pane.

## "Pretty Good Privacy" (PGP) Email Encryption

In 1991, cryptographer Phil Zimmermann developed [Pretty Good Privacy](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) (PGP), email encryption software that he intended for peace activists to use while organizing in the anti-nuclear movement.

Today, PGP is a company that sells proprietary encryption software. [OpenPGP](http://openpgp.org/) is the open protocol that defines how PGP encryption works, and [GnuPG](http://www.gnupg.org/) (GPG for short) is free software, and is totally compatible with the proprietary version. GPG is much more popular than PGP today because it's free for everyone to download, and cypherpunks trust it more because it's open-source. The terms PGP and GPG are often used interchangeably.

Unfortunately, the standard is notoriously hard to use, as evidenced by Glenn Greenwald initially being [unable](http://www.huffingtonpost.com/2013/06/10/edward-snowden-glenn-greenwald_n_3416978.html?1370895818) to set it up and talk securely with Edward Snowden. However, once you're in the habit of using it regularly, it gets easier.

If you use PGP encryption, you will have to make a few changes to how you use email. For example, if you use PGP on your computer but receive an encrypted email on your phone, you won't be able to decrypt the email and read it until you get back to your computer.

PGP is used in two ways with email:

1. A sender can encrypt the content of email messages so that only the sender and receiver can read them.

2. Senders can sign messages, proving that the message the sender sent is the same one the receiver reads, and that it wasn't tampered with in transit. (Assuming you trust the public key—more on this later.)

On the other end, the receiver uses PGP to decrypt the message and verify the email's digital signature.

### What's a key?

PGP uses a public key and a private key, two mathematically-related numbers which are represented as unique strings of randomly-generated numbers and letters. Information about the public key is usually stored on something called a public key server, which is a bit like a phonebook. When people want to email you securely, they can look up your public key and send you an encrypted email.

![A sample PGP block.](images/pgp_block.png)

Like OTR, each PGP key has a unique fingerprint. [Here's](https://pgp.mit.edu/pks/lookup?op=get&search=0xE7E8E7D097604F9D) the PGP public for Tommy Collison, one of the editors of this guide. That key's fingerprint is 696E C53E 8535 6DE8 10C3 75D2 E7E8 E7D0 9760 4F9D. Look at the PGP block above—it's long and would be difficult to verbally confirm with another person. A fingerprint is a short and more convenient way to uniquely represent a key.

You can think of your public key and private key like your email address and email passphrase. You probably want your general email address to be public, so that people can contact you—it's the same with your public key. And, in the same way you should always keep your email passphrase to yourself, you should never share your private key with anyone or attach it in an email.

It's a good idea to publicize your public key, to help people who want to contact you verify that the public key they use belongs to you. Many people [tweet](https://twitter.com/tommycollison/status/620696207187398656) their key's fingerprint, [mention](http://parkerhiggins.net/2014/08/email-signature-nudge-encryption-use/) it in their email signatures, or [link](https://twitter.com/ggreenwald) to it in their Twitter bio:

![Glenn Greenwald's Twitter bio, which includes a link to his PGP public key.](https://raw.githubusercontent.com/tommycollison/encryption-works/issue_76_pgp_intro/images/Greenwald_key_link.png)

This increases the legitimacy of the key. Not only does an attacker have to create a false key for Greenwald, but they have to hack his Twitter account and point the link in his bio to the fake key. That's not likely to happen, especially since—for added security—Glenn's public key is listed on [his profile at his website](https://theintercept.com/staff/glenn-greenwald/). This line of attack leaves several obvious clues, and so it's hard to pull off. Therefore, we can say with some degree of trust that Glenn's public key info is legitimate.

### Software

To install GPG, Windows users can install [Gpg4win](http://www.gpg4win.org) and Mac OS X users can download [GPGTools](https://gpgtools.org). If you run GNU/Linux you should already have GPG installed (since GPG is a command line program) but software exists that interfaces with email clients and makes it much easier to use.

To use GPG securely, you have to download and use a desktop mail client rather than log into your email through a browser. We recommend using [Thunderbird](https://www.mozilla.org/en-US/thunderbird) as your desktop email client with the [Enigmail](https://www.enigmail.net/home/index.php) add-on for GPG.

While some third parties have developed end-to-end encryption plugins that you can use with browser mail, we currently don't recommend them because they're comparatively less secure than desktop client-based GPG and don't have all the features.

### Sending And Receiving Encrypted Email

Once you've installed Enigmail, you'll notice some new settings when you go to compose an email in Thunderbird.

![Sending an encrypted email with Thunderbird and the Enigmail add-on.](images/sending_encrypted_email_with_thunderbird_and_enigmail.png)

When sent, only the private key for `sva1bard@risup.net` will be able to decrypt this email (since it's encrypted with the corresponding public key).

If you try and access an encrypted email in a web browser, it's unreadable because the private key is missing.

![Web browsers can't read PGP-encrypted email.](images/pgp_gibberish_in_browser.png)

But when the email is accessed with the correct private key, it becomes readable again:

![The decrypted email.](images/decrypted_email.png)

## Encrypting Files with PGP

As well as powering email encryption with desktop clients like Apple Mail or Thunderbird, you can also use PGP to encrypt files on your hard-drive with your public key.

This serves as a second layer of protection if you use full-disk encryption and lends you extra security to transfer those files onto a flash drive or upload them to a cloud storage website.

![Using GPGTools to encrypt a file on Mac.](images/encrypt_file_pgp_mac.png)

### The Web of Trust

PGP works best when a [web of trust](https://en.wikipedia.org/wiki/Web_of_trust) is created. Strong crypto can't be broken, but can still be circumvented since humans are the weakest elements of any security system. People using PGP can fall victim to what's called a "man-in-the-middle attack" (often abbreviated as MitM). Let's say you're talking to your colleague via encrypted email and I'm an attacker. I could trick you into thinking that my public key was your colleague's. You'd encrypt a message with your private key and my public key. I can decrypt it, read and/or tamper with it, and then send the compromised message on to your colleague, with information purported to be from you.

This can be solved, or at least mitigated, if you and your colleague independently verify each other's keys. This way, you verify your colleague's public key independently of when they email you. But this raises another problem—meeting people and verifying their keys is time-consuming.

This is where the web of trust comes in. As time goes on, you meet people and verify their keys. If you sign those keys (publicly asserting that you've verified them), that functions as a vouch of sorts—this key has verified that key belongs to who it says it does. If I trust your key, by extension I should trust the keys you've signed, even if I don't know the signed key personally. I trust it because I trust you.

The Intercept's technologist Micah Lee helped Snowden get in contact with Laura Poitras. In an essay about his experience, he [references](https://firstlook.org/theintercept/2014/10/28/smuggling-snowden-secrets/) the usefulness of the web of trust and external verification:

> My encryption key was posted at both sites, so Snowden was able to find it easily, and the key was digitally signed by people who were well-known in the privacy world (pioneering blogger Cory Doctorow and free software champion Richard Stallman, for instance); this meant those people had digitally vouched, in a way that was incredibly difficult to forge, that the key really belonged to me and not to, say, some NSA trickster. In other words, Snowden didn’t need to worry about the key being a fake. Poitras was a founding board member of the FPF, so he assumed I would have her key, and he was right.

Keep in mind there are some legitimate criticisms and limitations to the web of trust as well. As Tor's Mike Perry [has explained](https://lists.torproject.org/pipermail/tor-talk/2013-September/030235.html), there are some occasions when you won't want someone to sign your key, since doing so implies a relationship between the two keys and, by extension, the two people. The web of trust leaks this type of data, it also has some points of failure, and does not scale well to large populations.

On the other hand, signatures can lend trustworthiness in some situations—if I were a whistleblower looking for Glenn Greenwald's correct key, I'd trust the one signed by his colleagues more than any others.

It's important to remember that when you create a PGP key, there's no verification process to prove that you are the owner of the email address associated with the key. Signing keys is a way of proving ownership. In general, it's good to be cautious about signing keys. It's worth weighing the pros and cons of signing and to decide on a case-by-case basis.

### How To Verify Someone's Key in Enigmail and View Signatures

If you're a journalist trying to get to grips with these privacy tools, it's useful to get together with colleagues and help one another out with setup. In addition, you can increase the trustworthiness of a colleague's key by signing it. In essence, you're publicly asserting that you trust that a person's key belongs to that person, and wasn't created by someone else.

Here's how to verify someone's GPG key:

- Meet your colleagues face-to-face. Each person should bring their own laptop.
- Make sure your key is uploaded to a keyserver. In the "Key Management" section of Enigmail, right-click and select "Upload Public Keys to Keyserver." It should suggest [pgp.mit.edu](http://pgp.mit.edu) by default, which will work fine.
- Search for your friend's key in the keyserver and download and import it. Then, verbally verify that the fingerprints are the same. If you know your colleagues, this is enough, but if you're unsure of names, feel free to ask people to bring some form of ID so you can double-check.
- Once you've verified their key is correct, you should sign it with yours.
- You can see who else has signed a person's key by clicking on it and choosing "View Signatures" from the "Select action ..." drop-down menu.
- In the end, each person should have an GPG keyring containing signed keys of each other person.

### PGP Isn't Just For Email

While PGP is often used for email encryption, nothing stops you from using it to encrypt anything and publish it using any medium. You can post PGP-encrypted messages on blogs, social networks, and forums.

For example, Wired journalist Kevin Poulsen [published a PGP-encrypted message on Wired's website](http://www.wired.com/threatlevel/2013/06/signed-bda0df3c/) intended for Edward Snowden to read the same week his name was made public. Snowden's alleged public key was [published](http://pgp.mit.edu/pks/lookup?search=edward+snowden) on a keyserver under a Hushmail email address.

As long as Wired has a copy of Snowden's real public key, only someone in possession of Snowden's secret key can decrypt this message.

Here's a message that was encrypted to Micah Lee's public key. Without having access to his associated private key, NSA should not be able to break the encryption. (NSA—let us know if you get it.)

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

### Attacks

If you don't verify identities you have no way of knowing whether or not you are the victim of a MITM attack.

Washington Post journalist Barton Gellman, who Edward Snowden trusted with information about the NSA's PRISM program, [wrote about his experience using PGP](http://www.washingtonpost.com/world/national-security/code-name-verax-snowden-in-exchanges-with-post-reporter-made-clear-he-knew-risks/2013/06/09/c9a25b54-d14c-11e2-9f1a-1a7cdee20287_story.html).

> On Thursday, before The Post published its first story, I made contact on a new channel. He was not expecting me there and responded in alarm.
>
> "Do I know you?" he wrote.
>
> I sent him a note on another channel to verify my digital "fingerprint," a precaution we had been using for some time. Tired, I sent the wrong one. "That is not at all the right fingerprint," he wrote, preparing to sign off. "You're getting MITM'd." He was talking about a man-in-the-middle attack, a standard NSA technique to bypass encryption. I hastily corrected my error.

Snowden was right to be cautious and to insist that he check Gellman's new PGP fingerprint. PGP, if used correctly, provides the tools necessary to prevent MITM attacks. But these tools only work if users are vigilant about identity verification and careful in obtaining keys.

### What PGP Doesn't Do

To use PGP effectively, it's good to understand what it does and doesn't do.

For instance, using PGP with email encryption only encrypts the *content* of your emails. It doesn't encrypt the To/From fields, the subject line or the headers, the sundry details associated with the message. For an email, metadata would include the associated email addresses, the time and date sent, and the IP address the email originated from, as well as servers it traveled through en route to its destination. This means that someone surveilling me can tell that at 2:05pm on Sunday, June 21, `tommy@freedom.press` emailed `trevor@freedom.press` from a certain IP address, but they can't tell what the content of the message was.

Senator Diane Feinstein (D-Calif.) is a staunch defender of the NSA and has long [maintained](http://www.theguardian.com/world/2013/oct/21/dianne-feinstein-defends-nsa-data-collection) that the type of metadata collection the NSA carries out isn't intrusive because it doesn't include the content. However, even the list of people you're in email correspondence with can be very revealing. In May 2013, the Associated Press [reported](http://bigstory.ap.org/article/govt-obtains-wide-ap-phone-records-probe) that the Justice Department had seized email and phone records of the AP newsroom as part of their [investigation](http://www.vanityfair.com/news/2015/03/james-risen-anonymous-source-government-battle) of government leaks. Even if the reporters had been using PGP, this wouldn't have encrypted the email addresses the reporters were in contact with.

EFF [lists](https://www.eff.org/deeplinks/2013/06/why-metadata-matters) the numerous ways metadata can reveal more about someone than even the content of the calls. This is corroborated by former General Counsel of the National Security Agency Stewart Baker, who [said](http://www.rt.com/usa/158460-cia-director-metadata-kill-people/) that "Metadata absolutely tells you everything about somebody’s life. If you have enough metadata, you don’t really need content." Chillingly, former NSA director Michael Hayden has publicly [asserted](http://www.rt.com/usa/158460-cia-director-metadata-kill-people/) that "We kill people based on metadata."

Many PGP users mitigate this metadata leakage by using purposefully unspecific email subject lines, such as "Summer 2015" or "cat pics," or leaving the field blank.

PGP also doesn't automatically guarantee anonymity. If I send a PGP-encrypted email from `tommy.collison@gmail.com`, it isn't hard to tell who the owner of the email address is, even though the content of the email is encrypted. For added security, combine PGP with a pseudonymous email account.

There are two other steps you can take to decrease the amount of metadata leaked when using PGP email encryption. The first is [TorBirdy](https://trac.torproject.org/projects/tor/wiki/torbirdy), an extension for Thunderbird that routes the app's traffic through the Tor network, enhancing your privacy. It's an involved process, but worth a look if you're comfortable with advanced settings.

The second is using `--hidden-recipient` as a modifier to the `gpg` command when using GPG on the command-line, or as a configuration option. When the metadata of the subsequent encrypted file is [analyzed](http://tech.michaelaltfield.net/2013/10/19/analyzing-pgp-content/), the key ID of the recipient reads **0x00000000**. (Encrypted emails usually have the real key ID attached, such as **0x97604F9D**.)

### Verifying Software

Another use of PGP is to verify the integrity of software. To understand what I mean, consider the question: when you go to download a piece of software (the Tor Browser, for example), how do you know that what you're downloading is the same as what the developers created? How do you know that you didn't download a fake version? This could happen accidentally or maliciously.

One answer is to check the signature of the software.

This is a file typically ending in .sig or .asc which is distributed along with the piece of software you want to download. Using the GPG tools installed on your computer, you can determine whether the file you downloaded is the same as the one the developers intended for you to receive.

For this example, let's verify the signature of Tails, the operating system used by Greenwald and Poitras which I go into detail about in a later chapter.

To verify a signature, you need to import the GPG public key of the Tails developers. To do this, download the Tails signing key from the [Tails website](https://tails.boum.org/download/index.en.html):

![Downloading the Tails signing key.](images/tails_signing_key.png)

This will download the .key file onto your hard-drive. From there, you just need to drag and drop (or click **File > Import** in the GPG Keychain application):

![Importing the Tails signing key into our GPG keychain.](images/tails_import.png)

From here, follow the advice on the [Tails installation page](https://tails.boum.org/download/index.en.html) on using the command line to verify the signature.

![Verifying signature of the Tails download.](images/tails_verification.png)

Here, we can see my command line reads "Good signature," which means the software I downloaded was what the developers intended me to get. (In this example, I haven't verified the Tails signing key, which you should—check out the Tails [website](https://tails.boum.org/doc/get/trusting_tails_signing_key/index.en.html) to learn how to do this.)

In general, software websites should provide the signature for you to check, but not all do. Both [Tor](https://www.torproject.org/docs/verifying-signatures.html.en) and [Tails](https://tails.boum.org/download/index.en.html) give information on how to verify a signature.

An easier method of verification involves checksums. This is a string or "hash" of between 32 and 64 characters which are unique to the piece of software you want to download. The string is shown in two places, on your computer and on the website where you download the software from. If the strings are the same, we can say with some degree of certainty that the file we downloaded is the one the developer intended us to get.

### Verifying Checksums

Another use for PGP is to verify correct software. To understand what I mean, consider the question: when you go to download a piece of software (the Tor Browser Bundle, for example), how do you know that what you're downloading is the same as what the developers created? How do you know that you didn't download a fake version? This could happen accidentally or maliciously.

The answer is to check the "check-sum" of the software. This is a string of between 32 and 64 characters which are unique to the piece of software you want to download. The string is shown in two places, on your computer and on the servers where you download the software from. Using the GPG tools installed on your computer, you can determine whether the string you see matches the one published on the developer's website. If the strings are the same, we can say with some degree of certainty that the file we downloaded is the same as the one the developer intended us to get.

To verify a checksum, you need to import the public key of the Tails developers. To do this, download the Tails signing key from the [Tails website](https://tails.boum.org/download/index.en.html):

![Downloading the Tails signing key.](https://raw.githubusercontent.com/tommycollison/encryption-works/master/images/tails_signing_key.png)

This will download the .key file onto your hard-drive. From there, you just need to drag and drop (or click **File > Import** in the GPG Keychain application): 

![Importing the Tails signing key into our GPG keychain.](https://raw.githubusercontent.com/tommycollison/encryption-works/master/images/tails_import.png)

From here, follow the advice on the [Tails installation page](https://tails.boum.org/download/index.en.html) on using the command line to verify the checksum.

![Verifying checksums for the Tails download.](https://raw.githubusercontent.com/tommycollison/encryption-works/master/images/tails_verification.png)

In general, software websites have to provide the checksum for you to check, but not all do. Both [Tor](https://www.torproject.org/docs/verifying-signatures.html.en) and [Tails](https://tails.boum.org/download/index.en.html) give information on how to verify a checksum.

## Tails: The Amnesic Incognito Live System

>"[Tails] has been an essential tool for reporting the NSA story. It is an all-in-one secure digital communication system (GPG email, OTR chat, Tor web browser, encrypted storage) that is small enough to swallow."
>
>— Laura Poitras, Oscar-winning documentary filmmaker and board member with Freedom of the Press Foundation.

As mentioned above, the Tor network is the best choice today for secure web browsing: it obscures your location, prevents third-party tracking, and you can create a new browsing identity quickly and easily. What if there was an entire operating system designed with these principles in mind?

That's the thinking behind the Tails system. PGP and OTR are totally undermined if an attacker has physically compromised your machine and, say, installed a keylogger to capture all your logins, passphrases, and other sensitive data.

Tails was designed to be an entire operating system comprised solely of "software you can trust," meaning that you don't have to rely on other closed-source software. It also has features to prevent tracking, such as wiping itself clean every time you power down.

![The Tails operating system.](images/tails_desktop.png)

> Tails is a live system that aims at preserving your privacy and anonymity. It helps you to use the Internet anonymously almost anywhere you go and on any computer but leave no trace using unless you ask it explicitly.
>
> It is a complete operating-system designed to be used from a DVD or a USB stick independently of the computer's original operating system. It is Free Software and based on Debian GNU/Linux.
>
> Tails comes with several built-in applications pre-configured with security in mind: web browser, instant messaging client, email client, office suite, image and sound editor, etc.
>
> "About." [tails.boum.org](https://tails.boum.org/about/index.en.html).

In some ways, Tails is more difficult to use compared to a regular operating system. It's slow, and doesn't have all the software you might need. But some of these shortcomings are by design: such limitations make it a lot harder to mess up your endpoint security. If you're in the position where you think an intelligence agency, or another potential attacker, may want to target you or your colleagues (the journalist-whistleblower relationship comes to mind), it's the best tool available.

Since Tails isn't a practical choice for daily computer use, setting up Tor, PGP, and OTR encryption on your main operating system is also a good idea.

Every time you boot Tails you start from a clean state. It's "amnesic"—anything and everything you do gets erased on shutdown, and it doesn't leave a trace on the computer you used it on. It's designed this way so that if you create a trail of activity or get infected with malware while using Tails, it's almost certainly gone the next time you boot up.

(While Tails prevents many endpoint attacks, like all security tools, it is not 100% impervious to attacks. Recently, researchers have showed how attackers can implant malware in the BIOS—or the brains—of a computer, which may allow Tails to be [compromised](http://www.wired.com/2015/03/researchers-uncover-way-hack-bios-undermine-secure-operating-systems/). However, it's unclear how widespread this attack is or if it's particularly effective in the wild.)

It's a good idea to install Tails on a fresh storage device (either a DVD or a USB stick) to ensure everything works as it should. There are two ways of installing Tails:

- 1) Using the command line and the Tails .iso file to create a Tails instance on a removable storage device. For instructions, [click here](https://tails.boum.org/download/index.en.html).
- 2) Using an existing Tails installation and cloning the operating system onto a second storage device. For instructions, [click here](https://tails.boum.org/doc/first_steps/installation/index.en.html).

Once you get past this tricky install, Tails is currently the gold standard for anonymously using a computer, particularly when coupled with PGP-encrypted email.

There are two email clients bundled with Tails. Icedove (essentially Thunderbird with a different name and logo for trademark reasons) is now the default client in Tails and should strongly be preferred. Tails used to ship just with Claws Mail, which has a [serious vulnerability](https://tails.boum.org/support/known_issues/index.en.html#index21h2) that can leak the plaintext of your emails to the email server. **For those readers who may have an older persistent Tails volume, we suggest you upgrade to the latest release (which you should always be running anyway), and switch from Claws to Icedove.**

### Persistence: How to save your work between sessions

Journalists rely on their notes, and so the idea of an operating system that saves nothing between sessions may sound sub-optimal. But Tails has the optional feature of persistence—saving files in an encrypted volume which are accessible across separate sessions. This is useful for files you're working on, and encryption keys you use with Tails. (It's generally inadvisable to move keys off a Tails machine—you should keep them compartmentalized and away from your regular computer operating system.)

If you're going to be using the persistence feature, you have to install Tails on a USB stick or an SD card, not a DVD. Also, you have to clone Tails from an existing installation rather than manually flashing Tails onto a USB from a computer.

The Tails [installation guide](https://tails.boum.org/doc/first_steps/persistence/configure/index.en.html) has instructions on configuring persistence.

### Setting Up Secure Computers

> “Tails have been vital to my ability to work securely on the NSA story. The more I've come to learn about communications security, the more central Tails has become to my approach.”
>
>—Glenn Greenwald, journalist and Freedom of the Press Foundation board-member.

When it comes to privacy and anonymity, Tails is currently one of the best operating systems out there, so it's a good tool to have in your journalistic arsenal. The benefits of using it compound if your colleagues are using it too. Here's how to get several people up and running on Tails.

1. Download and burn a Tails DVD. Boot to Tails and create Tails USB sticks for each person.
2. When everyone has a Tails USB stick, each person should boot to Tails on her own laptop and configure a persistence volume on her USB stick. Since this volume is encrypted, each person should come up with her own secure passphrase that she will need to enter each time she boots to Tails. Everyone should reboot their laptops into Tails again and this time mount the persistent volume.
3.  Each person should create a new pseudonymous Jabber account. (Refer back to [The Intercept](https://firstlook.org/theintercept/2015/07/14/communicating-secret-watched/) for a how-to.) Since Tails makes all Internet traffic go over Tor, this is effectively making an anonymous Jabber account.
4. Each person should open Pidgin and configure it to use their new Jabber account and create a new OTR key. Everyone should add one another to their buddy lists and start OTR sessions with each other. Since everyone is in the same room, this is the perfect time to compare fingerprints and verify the identity of all parties so that you'll able to communicate securely over the Internet in the future.
5. Each person should create a new pseudonymous email address as well. Some email providers, such as Gmail, make it very difficult to create new accounts while using Tor and staying anonymous, so find another email provider to use instead. Make sure the email provider supports IMAP (so you can use a desktop email client) over SSL/TLS (so your email client uses encryption when communicating with the email server). If everyone chooses the same email provider, sending emails between accounts should never leave that email server, which reduces the metadata about your email usage available to anyone conducting dragnet surveillance of the Internet.
6. Each person should generate a new PGP key for their email address. Like with disk encryption, it's important to choose a strong passphrase when generating a PGP key.

### Potential Pitfalls

If a malicious attacker manages to modify or compromise your Tails USB stick, the security of the operating system can be compromised. For this reason, you should keep your install on you at all times and, if you suspect it's been compromised, create a new installation on a fresh device.

There are two ways of mitigating such a problem, making it less likely your Tails installation will be compromised in some way:

- 1) Only transfer the files and tools you need for the specific tasks you're trying to accomplish in Tails.
- 2) Create compartmentalized accounts and identities (email accounts, chat accounts, GPG/OTR keys, etc.) that are totally separated from your established digital presence.

This second point is important, and separating your contextual identities is a way to beef up Tail's built-in technical security features. Tails works best when it's supplemented by behavioral changes on the user's part in order to stay anonymous. For instance, you should use different Tails sessions for different tasks. (A session refers to a time spent using Tails, and it ends when you shut down and Tails resets. If you use Tails over two days and shut down in between, you're said to have two sessions.)

Also, if you have an anonymous email address you use to communicate with a source, it's inadvisable to also log into your personal or work email accounts.

## A Fighting Chance

Two years after he blew the whistle on the NSA, Edward Snowden wrote an op-ed in The New York Times.

> Spymasters in Australia, Canada and France have exploited recent tragedies to seek intrusive new powers despite evidence such programs would not have prevented attacks. Prime Minister David Cameron of Britain recently mused, “Do we want to allow a means of communication between people which we cannot read?” [...]
>
> At the turning of the millennium, few imagined that citizens of developed democracies would soon be required to defend the concept of an open society against their own leaders.
>
> Yet the balance of power is beginning to shift. We are witnessing the emergence of a post-terror generation, one that rejects a worldview defined by a singular tragedy.
>
>—["Edward Snowden: The World Says No to Surveillance."](http://www.nytimes.com/2015/06/05/opinion/edward-snowden-the-world-says-no-to-surveillance.html) The New York Times.

Protecting your privacy in the age of ubiquitous NSA surveillance is incredibly complex. Gaining a basic understanding of the concepts involved, much less actually using the software that's available, has an enormous learning curve. But it is worth it. The conversation around surveillance is changing. Users around the world are rallying against passive surveillance and legal challenges against the U.S. surveillance apparatus are growing in number.

Increasingly, we're living our lives online and creating long data trails which can be accessed and mined for information. When there is so much data about us online, it becomes exponentially harder to keep our personal information to ourselves. The challenge of the cypherpunk movement is to make secure and verified end-to-end encryption accessible to everyone, and turned on by default.

But even with [direct access](http://www.guardian.co.uk/uk/2013/jun/21/gchq-cables-secret-world-communications-nsa) to all the data traveling at the speed of light through the Internet's backbone fiber-optic cables and the [cooperation](https://www.washingtonpost.com/wp-srv/special/politics/prism-collection-documents/) of the major United States tech companies (which are extremely difficult for people to boycott), the largest, most powerful and best-funded surveillance apparatus that humanity has ever seen can not invade our privacy without resistance.
