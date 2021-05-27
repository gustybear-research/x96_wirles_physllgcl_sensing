---
draft: false
title: "Insider-Resistant Context-Based Pairing (SIENNA) for Multimodality Sleep Apnea Test"

subtitle: "EEx96, Spring, 2021"

summary: "This EEx96 project implements SIENNA: a context-based pairing protocol for reliable multimodality sleep apnea screening tests."

tags:
- obstructive sleep apnea
- at-home screening
- multimodalty
- device pairing
- friendly jamming
- fuzzy commitment
- JADE ICA
- yao xor lemma
- eavesdropper
- spoofing
- polysomnography
- active project
- active eex96 project

date: 2021-05-16T00:00:00-10:00

authors:
- Stephanie Aelmore
- Samson Aggelopoulos
- Willy Chang
- Brian Lu
- Marionne Millan
- Alana Power
- Yao Zheng

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, place an image named `featured.jpg/png` in your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
# Set `preview_only` to `true` to just use the image for thumbnails.
image:
  placement: 3
  caption: ""
  focal_point: "Center"
  preview_only: true
  alt_text: " "

links:
#- icon: twitter
#  icon_pack: fab
#  name: Follow
#  url: https://twitter.com/georgecushen
- name: CRN
  url: ./project/research/x96_multi_moda_pair_sienna/#logistics
- name: PUB
  url: ./publication/zheng-insider-resistant-context-based-pairing-2021/
- name: Slides
  url: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/presentation/EE496%20Poster_%20SIENNA.pdf
- name: Dataset
  url: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing



# Markdown Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example

gallery_item:
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/_DSC2122_00006.jpg
  caption: highlights a
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/_DSC2165_00009.jpg
  caption: highlights b
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/_DSC2167_00010.jpg
  caption: highlights c
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/_DSC2178_00014.jpg
  caption: highlights d
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/_DSC2193_00016.jpg
  caption: highlights e
- album: highlights
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/IMG_3548.jpg
  caption: highlights f

- album: modality
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/resp_belt.png
  caption: The respiratory belt detects chest displacement (breathing) through changes in thoracic or abdominal circumference.
- album: modality
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/prms.png
  caption: The PRMS detects displacement (breathing) in patient's chest through phase offset between the TX and RX signal.

- album: sienna
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/clinic_visit.png
  caption: A medical technician places a respiratory belt on a user and pairs it with the user's phone.
- album: sienna
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/pairing.png
  caption: A user pairs the PRMS with the user's phone.
- album: sienna
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/mod_change.png
  caption: User switches to PRMS for OSA screening.
- album: sienna
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/verification.png
  caption: Doctor verifies OSA data for any abnormalities.

- album: implementation
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/sienna_prototype.png
  caption: Implementation of SIENNA with, an Android application, a contact sensor, and PRMS.
- album: implementation
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/evaluation_01.jpeg
  caption: Evaluation 01
- album: implementation
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/evaluation_02.jpeg
  caption: Evaluation 02
- album: implementation
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/evaluation_03.jpeg
  caption: Evaluation 03
- album: implementation
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/evaluation_04.jpeg
  caption: Evaluation 04

- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/iq.png
  caption: Raw IQ data received by different RF channels of the PRMS
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/time_domain.png
  caption: Breathing mixture obtained by (linear) demodulating the raw IQ (top), individual breathing patterns after source separation in comparison with the ones collected by the respiratory belt (bottom)
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/time_feature.png
  caption: Time domain analysis show the inhale and exhale characters are distinct between the two subjects, which allows patient tracking during modality changes.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/frequency_feature.png
  caption: Frequency domain analysis show the inhale and exhale characters are distinct between the two subjects, which allows patient tracking during modality changes.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/feature_preservation.png
  caption: Signal reconstructed after 64-level-crossing quantization with vital related dynamic features preserved.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/friend_similarity.png
  caption: Similarity between belt-based and PRMS-based breathing patterns, measured with the same subject.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/attack_similarity.png
  caption: Similarity between belt-based and PRMS-based breathing patterns, measured with different subjects.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/slant-ranges.png
  caption: The effect on the fingerprint similarity due to the change of slant range between the PRMS and the subject.
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/entropy.png
  caption: Average entropy per bit of the fuzzy commitments, e.g., RS encoded key salt XORed with (multiple) fingerprint segments, measured via NIST tests
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/rs_encode.png
  caption: Commitment time with RS codes of different message/parity symbol lengths
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/rs_decode.png
  caption: Reconstruction time with RS codes of different message/parity symbol lengths and symbols errors
- album: results
  image: https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/friendly_jamming.png
  caption: Performance of SIENNA against eavesdropping and spoofing in terms of aggregated BER

---
***
# Executive Summary
  At-home screening systems for obstructive sleep apnea (OSA) utilizes contactless and contact-based sensing modalities, which allow for reliable remote chronic disease management. However, multimodality screening systems are vulnerable to wireless exploitations for device pairing as patients switch between modalities during screening tests. Malicious attacks from non-compliant patients would be able to manipulate the data by eavesdropping or spoofing the wireless signal. To mitigate all attacks, we present **SIENNA**, an in**SI**der r**E**sista**N**t co**N**text-based p**A**iring protocol. SIENNA leverages JADE-ICA to identify a user’s respiration pattern within a multi-person environment and uses fuzzy commitment for automatic device pairing. Friendly jamming techniques would be used to prevent an insider with knowledge of respiration patterns from acquiring the pairing key. Our results show that SIENNA is able securely pair devices with more than 90% success rate under noisy environments and is robust against attackers with full knowledge context information.

***
# Presentation
{{< youtube-enhance TWJSP7n3JsE >}}

***

# Highlights
{{< gallery-enhance album="highlights" numbered="true" caption="Project Highlights">}}

***
# Logistics {#logistics}
- **CRN**
| EE196 | EE296 | EE396 | EE496 |
| ---   | ---   | ---   | ---   |
| 90737 | 90738 | 90739 | 90740 |
 ***

# Introduction
  In America millions suffer from obstructive sleep apnea (OSA), an airway muscle related breathing condition that involuntarily causes respiratory cessations during sleep. Poor treatment can cause a myriad of negative health problems, however the typical diagnostic procedure, an In-lab polysomnography (PSG) commonly referred to as a sleep study, can be costly, intrusive and are requires the patient to be in-lab overnight. The alternative, at home OSA screenings, provide convenience and is economically advantageous, but the device pairing they utilize can be vulnerable to wireless exploitation and testing fraud.

***

# Background
  The at-home multimodality OSA screening system we utilized has three modules: One - a respiratory belt that straps around the chest, measuring changes in thoracic circumference from respiration. Two - a physiological radar monitoring system or PRMS that measures the phase shift of reflected signals from the patient’s chest movements. And Three - a mobile OSA app that connects to and collects data from the sensing modalities.
  
  The issue with at-home OSA screening comes with it’s pairing vulnerability. The belt is typically paired with the patient’s phone by a medical technician during the clinic visit. The PRMS however is paired without supervision at the user’s home. This unsupervised pairing process could be subject to exploitation from a non-compliant user. Our design goals were to pair the two devices with zero human interaction in such a way that the process is protected against a co-located adversary.
  
  What distinguishes our adversary model is that the system’s legitimate user could also be an attacker. They may seek to eavesdrop the pairing between the PRMS and their phone to extract the security key, decrypt and review the data before a doctor examines it. They may also leverage the eavesdropped key in order to transmit false data to the mobile device, manipulating the testing outcome. 

{{< gallery-enhance album="modality" numbered="true" caption="Sensing modalities for at-home OSA screening system.">}}
***

# Methodology  
SIENNA incorporates four main elements to ensure that the breathing pattern monitored by the PRMS is that of the desired patient, and protect the transmitted information from eavesdropper attacks. The pairing procedure of SIENNA is shown in the gallery below. It begins when the user visits a doctor to obtain the test authorization. During the visit, the doctor attaches a respiratory belt to the patient, and pairs it to the user's mobile device OSA app. Once arriving home, the user lies in bed and the PRMS automatically pairs with the mobile device based on the respiration pattern observed by both the PRMS and the respiratory belt. Once the pairing completes, both links from the PRMS and respiration belt to the mobile device are secure. The user can freely choose either the respiratory belt or PRMS for OSA screening, and the selected modality communicates encrypted OSA data to the mobile device. Once testing is completed, the user revisits the doctor and uploads the OSA screening from the mobile device. The doctor runs a compliance check and examines whether there were any significant gaps or inconsistencies with the OSA data. Based on the compliance check report, the doctor decides whether to accept or reject the OSA screening.

{{< gallery-enhance album="sienna" numbered="true" caption="SIENNA Overview">}}

### JADE-ICA
Joint Approximate Diagonalization of Eigenmatrices for Independent Component Analysis (JADE-ICA) is an algorithm for separating independent sources from a mixed signal. SIENNA uses JADE-ICA to separate mixed breathing patterns, in the event the PRMS picks up the breathing of multiple subjects.  
JADE-ICA approximates a source matrix $S$, composed of a column vector for each source signal $s_i(t)$, where $i=1 ... N$, and $N$ represents the number of independent sources (i.e., the number of distinct breathing patterns present). The input is provided as a mixed matrix $X$, which is assumed to be a linear combination of sources $s_i(t)$. Thus, $X$ can be described by the equation $X = W\times S$, where $W$ is a matrix describing how the independent sources are mixed.  
To approximate the mixing matrix $W$, we first apply Principle Component Analysis (PCA) to the input matrix $X$, resulting in $P = B\times X$. PCA identifies the orthogonal vectors along which there is the most variance, so the columns of $P$ will be perfectly orthogonal, regardless of rotation.
$P$ is then rotated to obtain maximum independence between its row vectors, with the rotation matrix $V$. This gives us our mixing matrix $W=V\times B$.

{{< figure library="true" numbered="true" src="https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/jade-ica.png" title="Illustration of JADE-ICA with two targets." width="60%" >}}

### Level-Crossing Quantization
Level-crossing quantization is an algorithm for producing a binary representation of an analog signal. SIENNA uses level-crossing quantization to produce a fingerprint for the breathing pattern of the target patient.  

{{< figure library="true" numbered="true" src="https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/quantization.png" title="Illustration of level-crossing quantization with two thresholds." width="40%" >}}

We define a number of set thresholds $q$ with a unique binary representation for each space between thresholds, given by $QTZ(x)$. The value of $x$ at each sample time is transformed by $QTZ(x)$ into a binary code representing its position between the thresholds.

### Fuzzy Commitment
The fuzzy commitment scheme uses Reed-Solomon encoding to incorporate error tolerance into cryptographic commitment generation. This allows SIENNA to accept close matches to the target breathing pattern, within a controllable threshold.
First, the transmitter $a$ and the receiver $b$ both extract fingerprints $f_a$ and $f_b$ using a combination of the above methods. To thwart mix-up attacks, we need to consider $f_a$ and $f_b$ a match if and only if they are within a set threshold. This is accomplished by first encoding a key salt $s$ with Reed-Solomon encoding, giving us $l=RS(s)$. We then compute the commitment $c$ as $l$ XOR $f_a$, and transmit the result.
Upon receiving the commitment, $b$ extracts $\hat{l}=c$ XOR $f_b$. Using the Reed-Solomon decoding function, we decode $\hat{s}=\overline{RS}(\hat{l})$. Due to the error-correction capability of Reed-Solomon codes, $s=\hat{s}$ if and only if $l$ and $\hat{l}$ differ by a set number of bits.  
A hash function $H$ is used to compare $s$ and $\hat{s}$. The “hardness” of the security in this approach is based on the number of bits used in the hash function and the number of bits used in the key salt. With 128 bits for the key salt and 256 bits for the hash function, the hardness is comparable to SHA-256 encryption. 

### Friendly Jamming
SIENNA uses a friendly jamming scheme to thwart eavesdropping. SIENNA transforms commitments into Orthogonal Frequency-Division Multiplexing (OFDM) symbols, and transmits them in duplicate. The receiver then randomly jams either the original symbol or the duplicate. Since the jammed symbols are difficult to distinguish from the unjammed symbols, only the receiver can identify which symbols are jammed and reconstruct the original message.

{{< figure library="true" numbered="true" src="https://github.com/gustybear-research/conf_globecom_multi_moda_dev_pair/raw/main/figures/website/protocol.png" title="Overview of the fuzzy commitment and friendly jamming process." width="40%" >}}
***

# Implementation and Experimentation
Sienna was tested using a customized mmwave radar from TMYTEK, specifically their BBox and UP/Down Converter. This setup uses a 28GHZ OFDM radar controlled with National Instruments USRP 2974 and interfaced through labview, along with the Pnuemotrace 1132 respiratory sensor. During testing the android device communicates with our host computers through BLE and is connected to our labview implementation, which executes the modality switching and data logging. Our eavesdropper slash spoofer was based on a BLE device using Kismet and Ubertooth.


  For testing purposes we had two testing setups, one indoor and another one outdoors. The indoor setup uses two twin beds, whilst the outdoors setup uses beach mats and umbrellas. Both setups tested in similar fashions with the subjects wearing the respiratory sensors and .5 meters below our mmwave radar. Each experiment lasted approximately 1 hour, during which we toggled modality switches and adversarial attacks through our BLE eavesdropper slash spoofer every 10 minutes. 
  During each experiment a third-party executed the modality switches and operated the computer running the Ubertooth. The packets transmitted by the OSA application, the chest-band, and the mmWave radar were identified based on their Bluetooth Device Addresses (BDAs) obtained prior of the experiment
To implement eavesdropping attacks, the hosts codes record the packets containing fuzzy commitment and hash values of new keys from the modality switch.
	The spoofing attack was done with a attacker-generated compliance tracking data encrypted with the deduced key which was transmitted  at  higher  power  during  data  upload  toward the  android app,  in  attempt  to  manipulate  the  latter  into  accepting the fraudulent data, which was verified during offline analysis.

{{< gallery-enhance album="implementation" numbered="true" caption="Implementation and Evaluation of SIENNA.">}}

***

# Results and Analysis
(Samson) The breathing signature was quantized by utilizing Labview to generate binary fingerprints. The breathing signature is a combination of complex thorax motions, due to respiration and heartbeat movements within +/- 0.5cm to +/- 0.05cm. A quantization step size of 0.05cm at 10 sample rates per second was the best to preserve fine movements. The quality of the binary fingerprints was evaluated based on the hamming distances between fingerprints observed by different modalities. Human subjects are distinguishable based on their inhales exhales and breathing depth which can be directly translated to the hamming distances. The similarities of same subjects observed by different modalities demonstrates an average hamming distance per bit between fingerprints is around 63% within the first 6 seconds. Meanwhile, the similarities between different subject observed by different modalities results an average hamming distance per bit between fingerprints is below 5%. Overall, SIENNA can be set to around 70% to allow accurate patient tracking during modality switches. The security of the fuzzy commitment is measured by the randomness of the commitments. Our results show that the entropy per bit drops nearly by half when the key salt is converted into a commitment due to the redundancy of the human respiratory motion’s cyclic character. Other factors also include when the quantization levels increase, the granularity of the binary sequencing improves, which slightly improves the randomness of the breathing fingerprints, resulting in a higher degree of entropy in the commitments. Also, when the commitment is generated with multiple rounds of XOR operations, the entropy decreases due to the cross-correlation between fingerprint segments. SIENNA’s performance against eavesdropping and spoofing is evaluated by comparing the bit error rate (BER) at the receiver versus the aggregated BER at the attacker’s side. Our experiment showed that the jamming signal could suppress the attacker’s BER to roughly 50%, which would render an undecodable message for the attacker. 

{{< gallery-enhance album="results" numbered="true" caption="Evaluation Results of SIENNA.">}}

***
# Conclusion
SIENNA, a novel insider-resistant context based pairing scheme for multi-modality OSA screening systems successfully secures device pairing by employing fuzzy commitment, friendly jamming, and JADE-ICA. SIENNA leverages the unique patterns of a person’s breathing dynamics for secure pairing and mitigates co-located attackers. Attackers with no knowledge of context can be avoided with fuzzy commitment. Attackers with general knowledge of context can be avoided by committing and decommitting multiple samples, taking advantage of the Yao’s XOR lemma properties. Finally, attackers with full knowledge of context can be avoided by employing friendly jamming. Overall, SIENNA is capable of protecting the security key during a pairing process against any attackers equipped with complete knowledge of the context information.


***
# Appendix

## Equipment
- PRMS: TMYTEK BBox Lite mmWave phase array + Ettus N210 USRPs
- Wireless Respiratory belt: Pneumotrace 1132
- OSA app: Android app with modality switching  
- Eavesdropper: BLE with Kismet and Ubertooth

## Data
### Exp. 2021/04/15
| Breathing Rate | Trial | Respiratory Belt            | PRMS                        |
| ---            | ---   | ---                         | ---                         |
| 0.0000 Hz (bg) | 1     | NA                          | [Download][0.0000Hz_prms_1] |
| 0.0000 Hz (bg) | 2     | NA                          | [Download][0.0000Hz_prms_2] |
| 0.2000 Hz      | 1     | [Download][0.2000Hz_belt_1] | [Download][0.2000Hz_prms_1] |
| 0.2000 Hz      | 2     | [Download][0.2000Hz_belt_2] | [Download][0.2000Hz_prms_2] |
| 0.2500 Hz      | 1     | [Download][0.2500Hz_belt_1] | [Download][0.2500Hz_prms_1] |
| 0.2500 Hz      | 2     | [Download][0.2500Hz_belt_2] | [Download][0.2500Hz_prms_2] |
| 0.3000 Hz      | 1     | [Download][0.3000Hz_belt_1] | [Download][0.3000Hz_prms_1] |
| 0.3000 Hz      | 2     | [Download][0.3000Hz_belt_2] | [Download][0.3000Hz_prms_2] |
| 0.3167 Hz      | 1     | [Download][0.3167Hz_belt_1] | [Download][0.3167Hz_prms_1] |
| 0.3167 Hz      | 2     | [Download][0.3167Hz_belt_2] | [Download][0.3167Hz_prms_2] |
| 0.3333 Hz      | 1     | [Download][0.3333Hz_belt_1] | [Download][0.3333Hz_prms_1] |
| 0.3333 Hz      | 2     | [Download][0.3333Hz_belt_2] | [Download][0.3333Hz_prms_2] |
| 0.3500 Hz      | 1     | [Download][0.3500Hz_belt_1] | [Download][0.3500Hz_prms_1] |
| 0.3500 Hz      | 2     | [Download][0.3500Hz_belt_2] | [Download][0.3500Hz_prms_2] |
| 0.3667 Hz      | 1     | [Download][0.3667Hz_belt_1] | [Download][0.3667Hz_prms_1] |
| 0.3667 Hz      | 2     | [Download][0.3667Hz_belt_2] | [Download][0.3667Hz_prms_2] |
| 0.4000 Hz      | 1     | [Download][0.4000Hz_belt_1] | [Download][0.4000Hz_prms_1] |
| 0.4000 Hz      | 2     | [Download][0.4000Hz_belt_2] | [Download][0.4000Hz_prms_2] |
| 0.4500 Hz      | 1     | [Download][0.4500Hz_belt_1] | [Download][0.4500Hz_prms_1] |
| 0.4500 Hz      | 2     | [Download][0.4500Hz_belt_2] | [Download][0.4500Hz_prms_2] |
| 0.5000 Hz      | 1     | [Download][0.5000Hz_belt_1] | [Download][0.5000Hz_prms_1] |
| 0.5000 Hz      | 2     | [Download][0.5000Hz_belt_2] | [Download][0.5000Hz_prms_2] |

# Acknowledgement
This project is partially supported NSF grants CNS-1948568, W911NF-19-1-0050, IIP-1831303, IIS-1915738 and TMYTEK mmWave research initiative.


[0.2000Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2000Hz_belt_1_trial.txt
[0.2000Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2000Hz_belt_2_trial.txt
[0.2500Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2500Hz_belt_1_trial.txt
[0.2500Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2500Hz_belt_2_trial.txt
[0.3000Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3000Hz_belt_1_trial.txt
[0.3000Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3000Hz_belt_2_trial.txt
[0.3167Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3167Hz_belt_1_trial.txt
[0.3167Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3167Hz_belt_2_trial.txt
[0.3333Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3333Hz_belt_1_trial.txt
[0.3333Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3333Hz_belt_2_trial.txt
[0.3500Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3500Hz_belt_1_trial.txt
[0.3500Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3500Hz_belt_2_trial.txt
[0.3667Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3667Hz_belt_1_trial.txt
[0.3667Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3667Hz_belt_2_trial.txt
[0.4000Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4000Hz_belt_1_trial.txt
[0.4000Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4000Hz_belt_2_trial.txt
[0.4500Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4500Hz_belt_1_trial.txt
[0.4500Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4500Hz_belt_2_trial.txt
[0.5000Hz_belt_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.5000Hz_belt_1_trial.txt
[0.5000Hz_belt_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.5000Hz_belt_2_trial.txt

[0.0000Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.0000Hz_radar_1_trial_background.csv
[0.0000Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.0000Hz_radar_2_trial_background.csv
[0.2000Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2000Hz_radar_1_trial.csv
[0.2000Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2000Hz_radar_2_trial.csv
[0.2500Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2500Hz_radar_1_trial.csv
[0.2500Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.2500Hz_radar_2_trial.csv
[0.3000Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3000Hz_radar_1_trial.csv
[0.3000Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3000Hz_radar_2_trial.csv
[0.3167Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3167Hz_radar_1_trial.csv
[0.3167Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3167Hz_radar_2_trial.csv
[0.3333Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3333Hz_radar_1_trial.csv
[0.3333Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3333Hz_radar_2_trial.csv
[0.3500Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3500Hz_radar_1_trial.csv
[0.3500Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3500Hz_radar_2_trial.csv
[0.3667Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3667Hz_radar_1_trial.csv
[0.3667Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.3667Hz_radar_2_trial.csv
[0.4000Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4000Hz_radar_1_trial.csv
[0.4000Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4000Hz_radar_2_trial.csv
[0.4500Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4500Hz_radar_1_trial.csv
[0.4500Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.4500Hz_radar_2_trial.csv
[0.5000Hz_prms_1]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.5000Hz_radar_1_trial.csv
[0.5000Hz_prms_2]: https://github.com/gustybear-research/x96_wirles_physllgcl_sensing/raw/main/exp_2021_04_15/0.5000Hz_radar_2_trial.csv
