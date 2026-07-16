class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1664"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/cybara-v1.0.1664-darwin-arm64-cli"; sha256 "6f2fddce25b06c3147765d9a56b83cebd58011fb5acf326929e3a105ff8f1f0d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/cybara-v1.0.1664-darwin-x64-cli"; sha256 "eb1bf97339e746fe1a00212360fc653b7300201d26eb4e672e6c7e80121386f2" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/cybara-v1.0.1664-linux-arm64-cli"; sha256 "5882d4b67e61499f0ecaf0e4f03d8656b51d6a9b130579b19836a6c9fce2f8ad" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/cybara-v1.0.1664-linux-x64-cli"; sha256 "b4bbab457a9edbd45942e336b820c824f921166277c21deacf69680261d723fa" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
