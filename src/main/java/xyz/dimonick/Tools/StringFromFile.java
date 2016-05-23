package xyz.dimonick.Tools;


import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.commons.io.IOUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;

public class StringFromFile {

    public static String receiveString (HttpServletRequest req){
        String result = "";

        try {
        ServletFileUpload upload = new ServletFileUpload();
        FileItemIterator iter = upload.getItemIterator(req);

        while (iter.hasNext()) {
            FileItemStream item = iter.next();
            String name = item.getFieldName();
            InputStream stream = item.openStream();
            if (item.isFormField()) {
                System.out.println("Form field " + name + " with value "
                        + Streams.asString(stream) + " detected.");
            } else {
                StringWriter writer = new StringWriter();
                IOUtils.copy(stream, writer, "UTF-8");
                result = writer.toString();

            }
        }
        } catch (FileUploadException e) {
            System.err.println("Failed file upload!");
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }
}
