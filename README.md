# PS_RRI
>This GitHub repository has been made to record the progress made during my Practice School-I at Raman Research Institute, and act as a store for the projects I have worked on.
>
>## Characterization of ADCs by analyzing data output
>>This introductory project involved analyzing ADC data from a 12-bit ADC and determining parameters such as SNR, SINAD and ENOB, using Python. This project is in the folder _ADC Characterization_. The learning from running the code for the 30MHz file is that one must always test ADCs with clean signals and if the signal generator is used without filters, the harmonic noise may lead you to believe that the ADC is faulty, when it is not.
>
>## Simulation of Digital Correlator on Python
>>This project was made as an attempt to understand the nuances of choices made during designing of digital hardware circuits, such as truncation of bits or bit resolution of ADCs, especially as variables that determine errors in the final power spectrum of a signal after processing. This project is in the folder _Python Simulation_.
>
>## Design of auto-correlator circuit on Red Pitaya STEMlab 125-14 FPGA board
>>This final project was made to replicate the digital part an FX correlator circuit, from the ADC to the stage of obtaining and accumulating the power spectrum of a signal in the frequency domain. The Vivado Design Suite was used for this task, with C and Python codes used to read the memory from the BRAMs in the hardware to plot the graphs. This project is in the folder _compfft_. An acknowledgement is due for the github repository [redpitaya_guide](https://github.com/apotocnik/redpitaya_guide) by apotocnik, as one of the IP cores to collect ADC data has been used from this repository.