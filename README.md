# Image-Steganography using LSB algorithm
Steganography refers to the technique to hide text in any digital media in order to ensure the security of the message. 
LSB algorithm is employed to carry out this task. 
This projects demonstrates steganography on black and white images which are somewhat noisy.

# LSB Algorithm: 
It stands for Least Significant Bit Algorithm and refers to the algorithm in which messages is embedded onto the imgae with the help of least significant bit. 

# Encryption: 
Each pixel of the image as well as each character in the text message is represented as 16-bit integer. If the LSB of a character in the text message is different then the LSB of each pixel of the image then the LSB of the character will replace the LSB of the pixel otherwise it'll remain unchanged. 

# Decryption: 
Decryption is the process of extracing the the hidden text from the image and is just opposite of what carried out for encryption but the text can't be extracted without the original image. Hence, the original image will act as the 'Key'.

# GUI 
![image](https://user-images.githubusercontent.com/81308059/124262348-8aa68400-db4f-11eb-9843-4d5d67fbab5f.png)

# Comparison of encrypted image with the original image
![image](https://user-images.githubusercontent.com/81308059/124262563-d35e3d00-db4f-11eb-9048-aff8dd09b2f9.png)

# Result
![image](https://user-images.githubusercontent.com/81308059/124262670-ef61de80-db4f-11eb-847b-3f041fb523bb.png)


