
# show = True
# #* Iterate forever over frames
# while show:

#     #* Read current frame
#     successful_frame_read, frame = webcam.read() 

#     #* Convert the data to greyscale
#     greyscaled_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

#     # #* Detect faces
#     face_coordinates = trained_faces_data.detectMultiScale(greyscaled_frame)

#      #* Draw rectangles around faces
#     colors = ((256,0,0), (0,256,0), (0,0,256))  

#     for (x, y, w, h) in face_coordinates:
#         color = random.choice(colors)
#         cv2.rectangle(frame, (x, y), (x+w, y+h), color, 2)
#         cv2.putText(frame, str("Face"), (x+5,y-5), font,1,color,1)
   
#     cv2.imshow("Test data", frame)
#     key = cv2.waitKey(1)

#     if key == 27:
#         show = False

# webcam.release()
