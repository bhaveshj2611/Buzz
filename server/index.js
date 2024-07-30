const io = require("socket.io")(3001, {
  cors: {
    origin: "*",
  },
});

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const { v4: uuidv4 } = require('uuid'); 

io.on("connection", async (socket) => {
  console.log("new client connected");
  const uid = uuidv4();
  socket.uid = uid;

  socket.emit('uid', uid);


  const messages = await prisma.message.findMany();
  console.log(messages);
  socket.emit('getMessages', messages);

  socket.on("disconnect", () => {
    console.log("disconnected");
  });

  socket.on("message", async (data) => {
    console.log(`Message received: ${data.message} from UID: ${socket.uid}`);
    
   
    socket.broadcast.emit("message", { uid: socket.uid, message: data.message });

   
    await prisma.message.create({
      data: {
        uid: socket.uid,
        message: data.message,
      },
    });
  });
});

io.on('error', (err) => {
  console.error('Server Error:', err);
});

console.log("Server is running on port 3001");
