# Synchronized Averaging for Signal Processing
Synchronized Averaging is a signal processing technique which is used to reduce the effects that unwanted noise will have on the signal. As the name implies, synchronized averaging takes multiple repetitions of a signal taken from multiple trials and finds the average signal from them. If the unwanted noise is random and uncorrelated with the signal, then synchronized averaging will greatly reduce the amount of noise in the signal, improving the signal-to-noise ratio (SNR).

<img src="https://github.com/user-attachments/assets/7d635591-8375-4cb8-8327-b3bd8dcf4bac" width="400" height="300">
<img src="https://github.com/user-attachments/assets/56bfa8cc-a9a9-4ebb-bdcf-edd914509a2b" width="400" height="300">
<img src="https://github.com/user-attachments/assets/abb5989b-555e-4c03-8687-9cae20090788" width="400" height="300">
<img src="https://github.com/user-attachments/assets/0d167fbd-9885-44cb-9ed5-69f0ba709739" width="400" height="300">
<img src="https://github.com/user-attachments/assets/043ed80a-d180-47ff-b80f-74238be5ebdd" width="400" height="300">
<img src="https://github.com/user-attachments/assets/83b83f2a-18d9-4b30-9374-ba1f1e1974b6" width="400" height="300">

<img src="https://github.com/user-attachments/assets/24393f87-51ff-4dbc-a4db-9f08945adaca" width="400" height="300">
<img src="https://github.com/user-attachments/assets/78265a1d-06e5-46c6-9440-575243b212b7" width="400" height="300">
<img src="https://github.com/user-attachments/assets/c712b89a-40cc-40c2-ab2a-97c8955b33f5" width="400" height="300">
<img src="https://github.com/user-attachments/assets/a688e7bb-0353-44bc-9f20-68814c2ce03b" width="400" height="300">
<img src="https://github.com/user-attachments/assets/bf0e5b7d-5336-4081-b670-58271191ef94" width="400" height="300">
<img src="https://github.com/user-attachments/assets/d4235916-792a-4fba-99b8-f4299b9a26f4" width="400" height="300">

<img src="https://github.com/user-attachments/assets/0a5b5d60-cee0-4ac0-9aa5-a3e498dbbaf1" width="400" height="175">

In conclusion, we can see from comparing the plots of the averaged ERP signal for each case that when a larger number of signals is used in the averaging process, the resulting plot is smoother and has more defined peaks.
It's important to note that a higher SNR is better as this means the signal power is greater while the noise power is smaller. A smaller euclidean distance is also better because it means there is less distance (in our case, less difference between the signals). With that being said, the SNR decreased and euclidean distance increased as more signals were used in the computations. The scenario when signals E11 to E2424 was used did produce a smoother average signal, but that's just because more signals were used in the averaging computation.
