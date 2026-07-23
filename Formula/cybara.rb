class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1887"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/cybara-v1.0.1887-darwin-arm64-cli"; sha256 "204a93334c7230795c2a3ef86da6ad41bf7182e2e40c4cf6e7ec9b33b30b7bb0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/cybara-v1.0.1887-darwin-x64-cli"; sha256 "12550f2dde096659472b496fe00d1c155e8e640b9bb51c10353b1f050f3f6f2b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/cybara-v1.0.1887-linux-arm64-cli"; sha256 "4441cd1fd7efc0f26f29b4ad9250bf59002cb453acf187e21869e1832c64a6a5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/cybara-v1.0.1887-linux-x64-cli"; sha256 "d6a8f31977707f973674725eccae07abb96f947c01b174988ae8f3b10896b8c8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
