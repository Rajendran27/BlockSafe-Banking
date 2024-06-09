package dbconn;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class ImageEncryption {
	 public static void main(String[] args) {
	        try {
	            // Generate a random secret key (for demonstration purposes)
	            SecretKey secretKey = KeyGenerator.getInstance("AES").generateKey();

	            // Path to the image file
	            String imagePath = "/voting/WebContent/image/1.jpg";

	            // Encrypt the image
	            encryptImage(imagePath, secretKey);

	            // Decrypt the image
	            decryptImage(imagePath + ".encrypted", secretKey);

	        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException
	                | IOException | IllegalBlockSizeException | BadPaddingException e) {
	            e.printStackTrace();
	        }
	    }

	    private static void encryptImage(String inputImagePath, SecretKey secretKey)
	            throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
	            IOException, IllegalBlockSizeException, BadPaddingException {
	        // Read the image file into a byte array
	        byte[] imageData = Files.readAllBytes(Paths.get(inputImagePath));

	        // Initialize the cipher for encryption
	        Cipher cipher = Cipher.getInstance("AES");
	        cipher.init(Cipher.ENCRYPT_MODE, secretKey);

	        // Encrypt the image data
	        byte[] encryptedData = cipher.doFinal(imageData);

	        // Write the encrypted data to a new file
	        Path outputPath = Paths.get(inputImagePath + ".encrypted");
	        Files.write(outputPath, encryptedData);

	        System.out.println("Image encrypted successfully.");
	    }

	    private static void decryptImage(String encryptedImagePath, SecretKey secretKey)
	            throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
	            IOException, IllegalBlockSizeException, BadPaddingException {
	        // Read the encrypted image file into a byte array
	        byte[] encryptedData = Files.readAllBytes(Paths.get(encryptedImagePath));

	        // Initialize the cipher for decryption
	        Cipher cipher = Cipher.getInstance("AES");
	        cipher.init(Cipher.DECRYPT_MODE, secretKey);

	        // Decrypt the encrypted data
	        byte[] decryptedData = cipher.doFinal(encryptedData);

	        // Write the decrypted data to a new file
	        Path outputPath = Paths.get(encryptedImagePath + ".decrypted");
	        Files.write(outputPath, decryptedData);

	        System.out.println("Image decrypted successfully.");
	    }
	}