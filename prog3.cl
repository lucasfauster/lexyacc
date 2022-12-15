class Main inherits IO {
	id: String <- "Hello"; 

    main() : Object {
		{
		    - out_string(id); --requires 2 dashes for comment
		   -- out_string("\n");
		}
    };
};