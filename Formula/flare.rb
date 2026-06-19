class Flare < Formula
  desc "Local-first search + document extraction across your files (CLI + MCP)"
  homepage "https://github.com/nha/flare"
  url "https://github.com/nha/flare/releases/download/v0.0.1/flare-cli-darwin-arm64.tar.gz"
  sha256 "a3c5b899c7f243e64ff97db85bc77ba99a0f4fddcedde09d37138320508997a5"
  version "0.0.1"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "flare"
    zsh_completion.install  "completions/_flare"
    bash_completion.install "completions/flare.bash" => "flare"
  end

  test do
    assert_match "flare-local", shell_output("#{bin}/flare --version")
  end
end
