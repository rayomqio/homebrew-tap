class Benchmq < Formula
  desc "BenchMQ is a simple, fast, and lightweight CLI to benchmark your MQTT broker with ease"
  homepage "https://github.com/rayomqio/benchmq"
  url "https://github.com/rayomqio/benchmq/releases/download/v1.0.3/benchmq_Darwin_x86_64.tar.gz"
  sha256 "9c9e977c3b83b2f556844fa682d055dcf1d730eb54386c4fd5a2c5972405c656"
  license "Apache-2.0"

  def install
    bin.install "benchmq"
  end

  test do
    system "#{bin}/benchmq", "--help"
  end
end
