"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const functions = require("firebase-functions");
const admin = require("firebase-admin");
// Start writing Firebase Functions
// https://firebase.google.com/docs/functions/typescript
admin.initializeApp();
exports.createUserRecord = functions.auth.user().onCreate((user) => {
    console.log('user created', user.email, user.uid);
    return admin.firestore().collection('users').doc(user.uid).set({ email: user.email, create_at: admin.firestore.FieldValue.serverTimestamp() });
});
exports.deleteUserRecord = functions.auth.user().onDelete((user) => {
    console.log('user deleted', user.email, user.uid);
    return admin.firestore().collection('users').doc(user.uid).delete();
});
//# sourceMappingURL=index.js.map