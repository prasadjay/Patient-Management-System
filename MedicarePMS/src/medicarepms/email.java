/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

/**
 *
 * @author PRASAD
 */
public class email {
    
    public static void main(String ar[])throws Exception
    {
        String host = "smtp.gmail.com";
    String from = "prasadacicts@gmail.com";
    String pass = "3fdsa";
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

    String[] to = {"prasadjayashanka@gmail.com"}; // added this line

    Session session = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject("sending in a group");
    message.setText("Welcome to JavaMail");
    Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
    
    /*
        
        // Common variables
String host = "smtp.gmail.com";
String from = "prasadacicts@gmail.com";
String to = "prasadjayashanka@gmail.com";

// Set properties
Properties props = new Properties();
props.put("mail.smtp.host", host);
props.put("mail.debug", "true");
 
// Get session
Session session = Session.getInstance(props);
 
try {
    // Instantiate a message
    Message msg = new MimeMessage(session);
 
    // Set the FROM message
    msg.setFrom(new InternetAddress(from));
 
    // The recipients can be more than one so we use an array but you can
    // use 'new InternetAddress(to)' for only one address.
    InternetAddress[] address = {new InternetAddress(to)};
    msg.setRecipients(Message.RecipientType.TO, address);
 
    // Set the message subject and date we sent it.
    msg.setSubject("Email from JavaMail test");
    msg.setSentDate(new Date());
 
    // Set message content
    msg.setText("This is the text for this simple demo using JavaMail.");
 
    // Send the message
    Transport.send(msg);
}
catch (MessagingException mex) {
    mex.printStackTrace();
}
* 
*  */

    }
    
}
