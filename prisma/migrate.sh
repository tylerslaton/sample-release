#!/bin/bash
export DB_URL="mysql://${DB_USER}:${DB_PASS}@${DB_HOST}"
echo "Pushing DB…"
npx prisma db push
echo "Seeding DB…"
node prisma/seed.js
