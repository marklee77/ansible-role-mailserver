require ["fileinto", "envelope"];
if header :contains "x-spam-flag" ["yes"] {
  fileinto "Spam";
  stop;
} else {
  keep;
}
