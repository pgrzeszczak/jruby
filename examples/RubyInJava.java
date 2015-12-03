package examples;

import org.jruby.Ruby;
import org.jruby.RubyRuntimeAdapter;
import org.jruby.javasupport.JavaEmbedUtils;
import org.jruby.runtime.builtin.IRubyObject;
import java.util.*;

class RubyInJava {
    public static void main(String[] args) {
        List<String> loadPaths = new ArrayList<String>();
        Ruby runtime = JavaEmbedUtils.initialize(loadPaths);
        RubyRuntimeAdapter evaler = JavaEmbedUtils.newRuntimeAdapter();

        evaler.eval(runtime, "puts 1+2");


        IRubyObject fromRuby = evaler.eval(runtime,
                        "now = Time.now \n" +
                        "return \"Today is #{now}#\""
        );

        System.out.println(fromRuby);

        IRubyObject rubyObject = evaler.eval(runtime,
                        "class RubyClass \n" +
                        "  def some_method(number) \n" +
                        "    'Number is ' + number.to_s \n" +
                        "  end \n" +
                        "end \n" +
                        "return RubyClass.new"
        );

        Object[] parameters = { 5 };
        String fromRubyObject = (String)JavaEmbedUtils.invokeMethod(runtime, rubyObject, "some_method", parameters, String.class);

        System.out.println(fromRubyObject);

        JavaEmbedUtils.terminate(runtime);
    }
}