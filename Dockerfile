# ==========================
# 1️⃣ Base Image
# ==========================
FROM node:18-alpine

# ==========================
# 2️⃣ Set Working Directory
# ==========================
WORKDIR /app

# ==========================
# 3️⃣ Copy package files (if they exist)
# ==========================
COPY package*.json ./

# ==========================
# 4️⃣ Install dependencies
# ==========================
RUN npm install || echo "No dependencies found"

# ==========================
# 5️⃣ Copy all project files
# ==========================
COPY . .

# ==========================
# 6️⃣ Set environment (optional)
# ==========================
ENV NODE_ENV=production

# ==========================
# 7️⃣ Expose the port
# ==========================
EXPOSE 3000

# ==========================
# 8️⃣ Command to run app
# ==========================
CMD ["node", "index.js"]
