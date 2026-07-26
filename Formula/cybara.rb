class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1955"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/cybara-v1.0.1955-darwin-arm64-cli"; sha256 "b976032e734a048f5585dea7700913b07626f12d8326b6215950e39713f8bab9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/cybara-v1.0.1955-darwin-x64-cli"; sha256 "947bb43bcc8e2ec2e53820306aa2ed840685d62a9cb5a9ba04fe83bcf06ba2ec" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/cybara-v1.0.1955-linux-arm64-cli"; sha256 "f70441b595ad414171d4f1267fd9b0e2161662331d33af07e52e551f71d7b7e5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/cybara-v1.0.1955-linux-x64-cli"; sha256 "90a137a974b28bbf688fbf9450c3925aa2a89a140bcea0f2c3c847ef9e267844" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
