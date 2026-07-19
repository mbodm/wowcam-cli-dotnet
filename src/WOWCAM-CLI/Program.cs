using var httpClient = new HttpClient();
using var response = await httpClient.GetAsync("https://mbodm.com");
var s = await response.Content.ReadAsStringAsync();

Console.WriteLine("Hello, World!");

var start = s.IndexOf("mailto:");
if (start >= 0)
{
    start += "mailto:".Length;
    var end = s.IndexOf('"', start);
#if NET48
    var email = s.Substring(start, end - start);
#else
    var email = s[start..end];
#endif
    Console.WriteLine(email);
}
