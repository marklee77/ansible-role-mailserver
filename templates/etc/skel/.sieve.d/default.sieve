require ["fileinto"];

# rule:[spam]
if anyof (header :is "X-Spam-Flag" "yes")
{
        fileinto "Spam";
}
